#!/usr/bin/env bash
current_dir=`pwd`
PROJECT=`basename $current_dir`
RUBY_VERSION='1.9.3-p0'
RUBY_VERSION_WITH_GEMSET="$RUBY_VERSION@$PROJECT"
RUBY="ruby-$RUBY_VERSION"
RVMRC="rvm use --create $RUBY_VERSION_WITH_GEMSET"

function log {
  printf "***%b\n" "$*" ; return $? ;
}

function check_ruby_environment {
  check_rvm && check_ruby && check_bundler
}

function is_old_rvm {
  is_old=`rvm version | sed '/^$/d' | awk '{print $2}' | awk -F . '{ if($1 > 1 || $2 >=10) { print 0 } else { print 1 } }'`
  [[ is_old -eq 0 ]] && return 1 || return 0
}

function rvm_exists {
  hash rvm
}

function reinstall_rvm_for_old_version {
  is_old_rvm && reinstall_rvm
}

function check_rvm {
  if [ rvm_exists ]; then
load_rvm && reinstall_rvm_for_old_version
  else
install_rvm
  fi
log "rvm installed"
}

function reload_rvm {
  rvm reload
}

function load_rvm {
  [[ -s ~/.rvm/scripts/rvm ]] && . ~/.rvm/scripts/rvm
}

function install_rvm {
  log "installing rvm"
  bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
  echo 'export rvm_project_rvmrc=1' >> $HOME/.rvmrc
}

function reinstall_rvm {
  log 'rvm version is too old and reinstall rvm'
  install_rvm && reload_rvm
}

function create_project_rvmrc {
  echo 'rvm_install_on_use_flag=1' >> .rvmrc
  echo $RVMRC >> .rvmrc
}

function prepare_project_rvmrc {
  [ ! -s .rvmrc ] && create_project_rvmrc
}

function check_ruby {
  rvm list | grep $RUBY_VERSION > /dev/null || install_ruby
  prepare_project_rvmrc
  rvm use $RUBY_VERSION_WITH_GEMSET
  log "ruby installed"
}

function install_ruby {
  log "installing ruby" &&
  rvm pkg install readline &&
  rvm install $RUBY -C "-with-readline-dir=$HOME/.rvm/usr"
}

function check_bundler {
  which bundle | grep $RUBY > /dev/null || install_bundler
  log "bundler installed"
}

function install_bundler {
  log "installing bundler"
  gem sources | grep "http://rubygems.org/" || gem sources -a http://rubygems.org/ && \
  gem install bundler --no-ri --no-rdoc
}

function install_bundle {
  log "install bundle"
  bundle install && \
  log "bundle installed"
}

function prepare_dev_environment {
  check_ruby_environment && install_bundle
}

function main {
  prepare_dev_environment
}

main $@
