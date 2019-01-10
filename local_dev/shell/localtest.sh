#!/bin/bash
container_name=(blog_server blog_db db_restore)

function do_command() {
  echo $1
  $1
}

function localtest() {
  echo "localtest begin"
  do_command "cd docker"
  for data in ${container_name[@]}
  do
    do_command "docker-compose up -d --build ${data}"
  done
}

case "$1" in
  localtest)
    localtest
    ;;

  *)
    exit 1
esac
