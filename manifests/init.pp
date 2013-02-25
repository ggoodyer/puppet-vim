# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adminvim

class vim {
  
  exec { "git clone https://github.com/raphael/adam-vim.git ~/.vim":
    creates => "~/.vim",
    provider => shell,
    logoutput => "all",
  }

#  exec { "softlink":
#    command => "ln -s ~/.vim/vimrc ~/.vimrc",
#    creates => "~/.vimrc",
#    logoutput => "on_failure",
#  }
}
