#!/usr/bin/env ruby

require 'fileutils'

######################################
# keep dot directories

SRC_DIR='/home/arch/alan'
THIS_DIR='/home/dots'

DOTDIRS=%w(
  .adobe
  .cache
  .config
  .cpan
  .fonts
  .gconf
  .gem
  .gtkpod
  .m2
  .macromedia
  .mysql
  .shotwell
  .ssh
  .stardict
  .sunpinyin
  .vimperator
  
  .mozilla
)

LINK_DIRS=%w(
  .aMule
  .thunderbird
  .vbox
)

######################################
# keep dot files
DOTFILES=%w(
  .arcrc
  .bash_history
  .bash_profile
  .fonts.conf
  .gemrc
  .gitconfig
  .goaccessrc
  .gtk-bookmarks
  .irb_history
  .irbrc
  .my.cnf
  .mysql_history
  .tmux.conf
  .viminfo
  .vim_mru_files
  .vimperatorrc
  .vimrc
  .Xmodmap
)

def main
  home_dir = ENV['HOME']
  puts DOTFILES.size, DOTFILES[0]
  DOTFILES.each do |file|
    puts "cp/ln #{file}..."
    src = "#{SRC_DIR}/#{file}"
    underline = file.sub(/^\./, '_')
    dest = "#{home_dir}/#{file}"
    
    FileUtils.cp src, underline
    FileUtils.rm dest if FileTest.exists?(dest) || FileTest.symlink?(dest)
    FileUtils.ln_s "#{THIS_DIR}/#{underline}", dest
  end

  DOTDIRS.each do |dir|
    puts "cp/ln #{dir}..."
    src = "#{SRC_DIR}/#{dir}"
    underline = dir.sub(/^\./, '_')
    dest = "#{home_dir}/#{dir}"

    FileUtils.cp_r src, underline
    FileUtils.rm_rf dest if FileTest.directory?(dest)
    FileUtils.rm dest if FileTest.exists?(dest) || FileTest.symlink?(dest)
    FileUtils.ln_s "#{THIS_DIR}/#{underline}", dest
  end
end

main()

######################################
# copy...
# .vim
# .vbox

