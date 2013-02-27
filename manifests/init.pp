# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adamvim

class adamvim {

  include adamvim::config

  file { [
    $adamvim::config::datadir,
    $adamvim::config::userdir
  ]:
    ensure => directory
  }

  # clone the git repo to tmp
  exec { 'clone adam-vim.git':
    command   => "git clone ${adamvim::config::uri}",
    path      => "${adamvim::config::bin}",
    creates   => "${adamvim::config::vimdest}",
    cwd       => "${adamvim::config::datadir}",
    tries     => "3",
    timeout   => "15",
    logoutput => "true",
  }
 
  # More maintainable:
  file { "${adamvim::config::vimdest}":
    ensure    => link,
    target    => "${adamvim::config::vimsrc}",
  }  

}
