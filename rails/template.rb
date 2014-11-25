# template.rb
# see http://guides.rubyonrails.org/rails_application_templates.html

# rails with:
# mysql2
# haml/sass/CoffeeScript
#   simple_form
#   bootstrap
#   jquery.js
#   underscore.js
#   underscore.string.js/hamljs
#   logger.js
# rspec,cucumber
#   factory-girl
#   forgery
#   capybara
#   jasmine
#   database_cleaner
#
# AND,
#
# puma
#   capistrano
# git
#   git flow

##############################################################################
# initial .gitignore
file '.gitignore', <<-IGNORE
# Ignore bundler config
/.bundle
/vendor/bundle

# Ignore the default SQLite database.
/db/*.sqlite3
/db/*.sqlite3-journal
/db/*.yml
/db/*.sql
/db/*.tgz

# Ignore all logfiles and tempfiles.
/log/*
/tmp/*

# Ignore ruby/rails files
*.rbc
*.sassc
.sass-cache
rerun.txt
pickle-email-*.html

# ignore eclipse file
.project
*.swp

# ignore os x folder attributes file
.DS_Store

# ignore test files
capybara-*.html
.rspec
/coverage/
/node_modules/
/spec/tmp/*
*.orig

# Ignore project debug files
*.log
*.tgz

# ignore data files
/config/fonts/*
/config/deploy/*.yml
/public/assets/*
/public/system/*
/public/images/*
/public/images
/data
  IGNORE

git :init
git add: "."
git commit: %Q{ -m 'initial commit' }

##############################################################################
# Gemfile
add_source "http://ruby.taobao.org"
comment_lines "Gemfile", /rubygems\.org/

## rails basic
gem 'rails-i18n', '~> 4.0.0'

## gems for db/model
#gem 'mysql2'
gem 'oj'
gem 'oj_mimic_json'
#gem 'ar-octopus'
#gem 'roo'
## patch for rake db:data:dump
#gem 'yaml_db', github: 'jetthoughts/yaml_db'
#gem 'delayed_job_active_record'

## gems for view
gem 'haml-rails', '>= 0.4.0'
gem 'bootstrap-sass'
gem 'simple_form'
gem 'remotipart', '~> 1.0'

## gems for client: using underscore.string template
gem 'underscore-rails'
gem 'underscore-string-rails'
gem 'haml_coffee_assets'

## gems for auth
#gem 'devise'
#gem 'cancan'
#gem 'omniauth'

## optional gems
#gem "nokogiri"
#gem 'thin'
#gem ''

## gems for development
gem_group :development do
  gem "rails_layout"
  gem "cucumber_scaffold", require: false
end

## Gems for deployment: nginx+puma+capistrano+rbenv
gem 'puma', '~> 2.3.2'
gem_group :development do
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'sshkit', '~> 1.3'
  gem 'ruby-prof'
end

## gems for test
gem_group :test, :development do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "jasmine"
  gem "jasmine-rails"
  gem "guard-rspec", require: false
end

gem_group :test do
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "forgery"
  gem "capybara"
end

run "bundle install"
git add: "."
commit_message = <<-MESG
rails bootstrap

1. setup bootstrap gems
   bundle install
   MESG

generate "rspec:install"
generate "cucumber:install"
run "touch features/support/paths.rb"
generate "cucumber_scaffold:install"
run "mv script/* bin/"
run "rmdir script"
git add: "."
commit_message += <<-MESG
2. initialize rspec/cucumber
   rails g rspec:install
   rails g cucumber:install
   rails g cucumber_scaffold:install
   MESG

generate "simple_form:install --bootstrap"
git add: "."
commit_message += <<-MESG
3. initialize rails#simple_form
   rails g simple_form:install --bootstrap
   MESG

#generate "jasmine:install"
generate "jasmine_rails:install"
git add: "."
commit_message += <<-MESG
4. initialize jasmine
   rails g jasmine_rails:install
   MESG


##############################################################################
# generator, route
#route "root to: 'todo#index'"

##############################################################################
# db init

# modify config/database.yml
app_username = @app_name
app_password = '******'
run "sed -i -r '/(username|password):/d' config/database.yml"
inject_into_file 'config/database.yml', before: /^\s*socket:/ do
  <<-YAML
  reconnect: false
  timeout: 3000
  username: '#{app_username}'
  password: '#{app_password}'
  host: 127.0.0.1
  YAML
end
inject_into_file 'config/database.yml', after: /^\s+database: \w+production\n/ do
  <<-YAML
  password: "<%= ENV['#{app_name.upcase}_DB_PASSWD'] %>"
  YAML
end

# prepare mysql rake
run "cp /home/dots/rails/mysql.rake lib/tasks"

git add: "."
commit_message += <<-MESG
5. initialize db config/rake
   config/database.yml
   lib/tasks/mysql.rake
   MESG


##############################################################################
# shell commands
#run "rm README.rdoc"
# rake("rails:freeze:gems") if yes?("Freeze rails gems?")
#run("echo you answer yes!") if yes?("Just test yes or no?")

##############################################################################
# assets init
git rm: "app/assets/stylesheets/application.css"
git rm: "app/views/layouts/application.html.erb"
run "rm app/assets/javascripts/application.js"
generate "layout:install bootstrap3"
#run "sed -i -e 's/<%#/-#/' -e 's/ %>//' app/views/layouts/_navigation_links.html.haml"
run "rm app/view/layouts/_navigation_links.html.erb"
run "cp /home/dots/rails/_nav*.html.haml app/views/layouts/"
git add: "."

inside 'vendor/assets/javascripts' do
  run "wget https://raw.github.com/jonnyreeves/js-logger/master/src/logger.min.js"
  run "wget https://raw.githubusercontent.com/aFarkas/html5shiv/master/src/html5shiv.js"
  run "wget https://raw.githubusercontent.com/arv/ExplorerCanvas/master/excanvas.js"
end

# modify application.html.haml
inject_into_file 'app/views/layouts/application.html.haml', :before => "^\s*= stylesheet_link_tag" do
  <<-SHIV
    / Le HTML5 shim, for IE6-8 support of HTML elements
    /[if lt IE 9]
      <script src="/assets/html5shiv.js" type="text/javascript"></script>
      <script src="/assets/excanvas.js" type="text/javascript"></script>
  SHIV
end

inside 'app/assets' do
  # modify application.js
  inject_into_file 'javascripts/application.js', :before => "//= require turbolinks" do
    <<-JS
//= require underscore
//= require underscore.string
//= require logger.min
    JS
  end

  file 'javascripts/app.js.coffee', <<-JS
# app.js: application level functions
root = exports ? this
root.App = class App
  selector: {}
  message: {}

  constructor: () ->
    console.log "app ctor"
    root._S = this.sel
    root._M = this.mesg

  loadPage: (elem) ->
    page = elem ? $("body")
    page_id = page.data("id")
    if page_id?
      k = _.str.classify("\#{page_id}_page")
      klass = root[k]

  sel: (page, key) ->
    if _.has(page.message, key)
      page.selector[key]
    else
      @selector[key]

  mesg: (page, key) ->
    if _.has(page.message, key)
      page.message[key]
    else
      @message[key]

$ ->
  app = new App
  app.loadPage()
  console.log JST["foo"](cart: [])
  JS

  # create application.scss instead of raw application.css
  file "stylesheets/app.css.scss", <<-SCSS
// put application level style here
  SCSS

#  file 'stylesheets/application.scss', <<-SCSS
#// application level styles
#@import 'bootstrap';
#@import 'app';
#  SCSS
end

# uncomment root route to get the default app layout passed
# uncomment_lines "config/routes.rb", /root '.+#index'$/

git add: "."
run 'mkdir -p app/assets/javascripts/templates'
run "cp /home/dots/rails/foo.hamlc app/assets/javascripts/templates"
# create context.js
file 'app/assets/javascripts/templates/context.js', <<-JS
#= require hamlcoffee
JS

commit_message += <<-MESG
6. initialize app/views/layouts, app/assets
   app/views/layouts/application.html.haml
     _messages.html.haml
     _navigation.html.haml
     _navbar.html.haml
   application.css.scss
     framework_and_overrides.css.scss
     app.css.scss
   application.js
     logger.min.js
     underscore.js
     underscore.string.js
   app.js.coffee
   templates/context.js
     foo.hamlc
   MESG

##############################################################################
# vendor/lib/file/initializer(filename, data = nil, &block)

# initial bin/ files
inside 'bin' do
  run "echo create bin/init.sh"
  file "init.sh", <<-CODE
#!/usr/bin/env bash
# rails init script

rake db:init
rake db:create
rails g scaffold todo task:string desc:string plan_at:date done_at:datetime
rake db:migrate

exit 0

rails g cucumber_scaffold:feature todo task:string desc:string plan_at:string done_at:string
exit 0

# jasmine
#rails g jasmine:examples
#jasmine examples
#rake jasmine
#rake jasmine:ci

# init samples
rails g scaffold some_model \\
  col_name:integer \\
  col_name2:string \\

rails g model model_name \\
  col_name:integer \\
  col_name2:string \\

rails d model model_name

exit 0


# list of rails' basic datatypes
:binary
:boolean
:date
:datetime
:decimal
:float
:integer
:string
:text
:time
:timestamp
  CODE

  file "sqlver.sh", <<-CODE
#!/usr/bin/env bash

DATABASES=(
  #{@app_name}_development
  #{@app_name}_production
)

for database in ${DATABASES[@]} ; do
  echo == $database ==
  mysql -e "use $database; select * from schema_migrations;" | tail -4
done

  CODE
  run "chmod +x init.sh sqlver.sh"
end

git add: "."
commit_message += <<-MESG
7. initialize utils @bin/
   bin/init.sh
   bin/sqlver.sh
   MESG

run("cap install")
git add: "."
commit_message += <<-MESG
8. initialize deployment
   cap install
   MESG

git commit: %Q{ -m '#{commit_message}'}

puts
puts "Congratulations!"
puts "----------------"
puts "rails bootstrap completed!"
puts "please start rails app `#{@app_name}' with bin/init.sh, thanks!"
