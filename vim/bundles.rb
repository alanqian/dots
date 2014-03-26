#!/usr/bin/env ruby

git_bundles = [
    # Code Completions
    "Shougo/neocomplcache",
    "ervandew/supertab",
    "mattn/zencoding-vim",
    "msanders/snipmate.vim",
    'scrooloose/snipmate-snippets',  # predefined snippets for snipmate
    # Fast navigation,
    "tsaleh/vim-matchit",
    # Fast editing,
    "tpope/vim-surround",
    "scrooloose/nerdcommenter",
    #"kana/vim-smartinput", noised input
    # IDE features,
    "scrooloose/nerdtree",
    "majutsushi/tagbar",
    "tpope/vim-fugitive",
    "scrooloose/syntastic",
    # Syntax/Indent for language enhancement,
    # web front end,
    "othree/html5.vim",
    "nono/jquery.vim",
    "pangloss/vim-javascript",
    "kchmck/vim-coffee-script",
    # web backend,
    "tpope/vim-rails",
    # markup language,
    "tpope/vim-markdown",
    # Ruby,
    "tpope/vim-ruby",
    "tpope/vim-endwise",
    "janx/vim-rubytest"
    # Scheme,
    "kien/rainbow_parentheses.vim",
    "wlangstroth/vim-racket",
    # Color Scheme,
    "altercation/vim-colors-solarized",
    "rickharris/vim-monokai",
    "tpope/vim-vividchalk",
    "chriskempson/vim-tomorrow-theme",
    # Misc,
    "mrtazz/DoxygenToolkit.vim",
    "vim-scripts/vimwiki",
    "bouzuya/vim-ibus"

    # obsoluted
    # "leshill/vim-json",
    # "aperezdc/vim-template",
    # "astashov/vim-ruby-debugger",
]

vim_org_scripts = [
    ["IndexedSearch", "7062",  "plugin"],
    ["jquery",        "12107", "syntax"],
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

puts "trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |addon|
  dir = addon
  url = "git://github.com/#{addon}.git"
  puts "unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end

vim_org_scripts.each do |name, script_id, script_type|
  puts "downloading #{name}"
  local_file = File.join(name, script_type, "#{name}.vim")
  FileUtils.mkdir_p(File.dirname(local_file))
  File.open(local_file, "w") do |file|
    file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
  end
end

