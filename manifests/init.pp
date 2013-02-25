# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adminvim

class vim {
 
  exec { "git clone https://github.com/raphael/adam-vim.git /Users/ggoodyer/.vim":
    path => "/opt/boxen/homebrew/bin/",
    creates => "/Users/ggoodyer/.vim",
    logoutput => "true",
  }

  exec { "ln -s /Users/ggoodyer/.vim/.vimrc /Users/ggoodyer/.vimrc":
    path => "/bin/",
    creates => "/Users/ggoodyer/.vimrc",
    logoutput => "true",
  }
}

#class {'vim': }
