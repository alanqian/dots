namespace :db do
  desc 'Initialize required user account.'
  task :init => :load_config do
    ensure_mysql ActiveRecord::Base.configurations[Rails.env]
    create_mysql_user ActiveRecord::Base.configurations[Rails.env]
  end

  desc 'Backup all database for this app.'
  task :backup => :load_config do
    ensure_mysql ActiveRecord::Base.configurations[Rails.env]
    backup_mysql
  end

  task :echo do
    puts ENV['MYSQL_ROOT_PASSWORD']
  end

  def ensure_mysql(config)
    unless config['adapter'] =~ /mysql/
      raise "#{config['adapter']} isn't supported."
    end
  end

  def create_mysql_user(config)
    app_username = config['username']
    app_password = config['password']
    db = config['database']
    grant_sql = ["development", "test", "production"].map { |env|
      %Q{GRANT ALL PRIVILEGES ON #{app_name}_#{env}.* TO '#{app_username}'@'localhost' IDENTIFIED BY '#{app_password}' WITH GRANT OPTION;}
    }.join(" ")
    system %Q(#{mysql_cmd} -e "#{grant_sql}")
  end

  def backup_mysql
    tm = `date +%Y%m%d.%H%M`.chomp
    databases = `#{mysql_cmd} -e "show databases;" 2>/dev/null | grep #{app_name}_`.split(/[\r\n]+/)

    databases.each do |db|
      abbr = db.sub(/^#{app_name}_/, '')
      system <<-CMD
        #{mysqldump_cmd} -n -c --delayed-insert #{db} > /var/www/sql/#{abbr}.#{tm}.sql"
      CMD
    end
  end

  def app_name
    Rails.application.class.parent_name.downcase
  end

  def mysql_cmd
    password = ENV['MYSQL_ROOT_PASSWORD']
    if password.nil?
      "mysql"
    else
      "mysql -u root -p'#{password}'"
    end
  end

  def mysql_dump_cmd
    password = ENV['MYSQL_ROOT_PASSWORD']
    if password.nil?
      "mysqldump"
    else
      "mysqldump -u root -p'#{password}'"
    end
  end
end
