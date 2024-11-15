#!/bin/bash

software_update() {
  
  get_backend_url
  system_unzip
  move_whaticket_files
  frontend_conf1
  frontend_node_dependencies1
  frontend_restart_pm2
  backend_node_dependencies1
  backend_db_migrate1
  backend_restart_pm2
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 O que você precisa fazer?${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "   [2] Atualizar\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}

