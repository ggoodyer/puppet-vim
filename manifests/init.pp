
# Public: Install https://github.com/raphael/adam-vim.git 
#
# Examples
#
#  include adminvim
class adamvimj {
  package { 'AdamVim':
    provider => 'git',
    source   => 'https://github.com/raphael/adam-vim.git',
    target   => '~/.vim',
  }

  exec { 'softlink-vimrc':
    command     => "ln -s ~/.vim/vimrc ~/.vimrc.",
    provider    => shell,
    timeout     => 30,
    refreshonly => true
  }
}
