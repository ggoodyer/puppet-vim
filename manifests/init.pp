# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adminvim
class vim {

  exec { "gitclone":
    command => "git clone https://github.com/raphael/adam-vim.git ~/.vim", 
    creates => "~/.vim",
    logoutput => "on_failure",
  }

  exec { "softlink":
    command => "ln -s ~/.vim/vimrc ~/.vimrc", 
    creates => "~/.vimrc",
    logoutput => "on_failure",
  }
}
