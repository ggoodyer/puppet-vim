# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adamvim

class adamvim {

  include boxen::config

  $home    = "${boxen::config::home}"
  $bindir  = "${home}/bin"
  $bin     = "${bindir}/"
  $uri     = 'https://github.com/raphael/adam-vim.git'
  
  $userdir = '/Users/ggoodyer'
  $vim     = "${userdir}/.vim"
  $vimrc   = "${userdir}/.vimrc"

  # clone the git repo to tmp
  exec { 'clone adam-vim.git':
    command   => "git clone ${uri}",
    path      => "${home}/homebrew/bin/",
    creates   => "${vim}",
    cwd       => "/tmp/",
    tries     => "3",
    timeout   => "30",
    logoutput => "true",
  }
 
  # copy the repo to ~/.vim
  file { "${vim}":
    source    => "/tmp/adam-vim",
    recurse   => true,
  }

  # More maintainable:
  file { "${vim}/.vimrc":
    ensure    => link,
    target    => "${vimrc}",
  }  

}
