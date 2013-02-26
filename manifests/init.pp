# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adamvim

class adamvim {
 
  exec { 'git clone https://github.com/raphael/adam-vim.git /Users/ggoodyer/.vim':
    path => "/opt/boxen/homebrew/bin/",
    creates => "/Users/ggoodyer/.vim",
    logoutput => "true",
  }

  exec { 'ln -s /Users/ggoodyer/.vim/.vimrc /Users/ggoodyer/.vimrc':
    path => "/bin/",
    creates => "/Users/ggoody   er/.vimrc",
    logoutput => "true",
  }
}

#class {'vim': }
