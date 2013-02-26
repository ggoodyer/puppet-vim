# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adamvim

class adamvim {

  include boxen::config
  # package { "vim": ensure => present }

  $home    = "${boxen::config::home}"
  $bindir  = "${home}/bin"
  $bin     = "${bindir}/"
  $uri     = 'https://github.com/raphael/adam-vim.git'
  
  $userdir = '/Users/ggoodyer'
  $vim     = "${userdir}/.vim"
  $vimrc   = "${userdir}/.vimrc"

  exec { 'clone adam-vim.git':
    command   => "git clone ${uri} ${dest}",
    path      => "${home}/homebrew/bin/",
    creates   => "${vim}",
    logoutput => "true",
  }

  exec { 'softlink .vimrc':
    command   => "ln -s ${vim}/.vimrc ${vimrc}",
    path      => '/bin/',
    creates   => "${vimrc}",
    logoutput => "true",
 }

}

