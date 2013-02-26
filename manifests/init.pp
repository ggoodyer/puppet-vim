# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adamvim

class adamvim {

  include boxen::config
  package { "vim": ensure => present }

  $home   = "${boxen::config::home}"
  $bindir = "${home}/bin"
  $bin    = "${bindir}/"
  $uri    = 'https://github.com/raphael/adam-vim.git'
  $dest   = '/Users/ggoodyer/.vim'

  exec { 'clone adam-vim.git':
    command   => "git clone ${uri} ${dest}",
    path      => "${home}/homebrew/bin/",
    creates   => "${dest}",
    logoutput => "true",
  }

#  exec { 'ln -s /Users/ggoodyer/.vim/.vimrc /Users/ggoodyer/.vimrc':
#    path => "/bin/",
#    creates => "/Users/ggoody   er/.vimrc",
#    logoutput => "true",
#  }
}

#class {'vim': }
