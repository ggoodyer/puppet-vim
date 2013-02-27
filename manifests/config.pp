# Config vars and files for adminvim.
#
# Usage:
# include adminvim::config
#
class adamvim::config {
  
  require boxen::config

  $bin          = "${boxen::config::home}/homebrew/bin/"
  $boxendatadir = "${boxen::config::datadir}"
  $uri          = 'https://github.com/raphael/adam-vim.git'
  $userdir      = "/Users/${boxen::config::user}"
  $vimdest      = "${userdir}/.vim"
  $vimsrc       = "${boxendatadir}/adam-vim" 
  
}
