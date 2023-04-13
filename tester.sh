#!/bin/bash

COLOR_BLUE_BOLD="\033[1;34m"
COLOR_GREEN_BOLD="\033[1;32m"
COLOR_RESET="\033[0m"
BOLD = "\033[1m"

clear
printf "${COLOR_GREEN_BOLD}- CUB3D TESTER -${COLOR_RESET}" && sleep 2 && echo && clear
printf "${COLOR_BLUE_BOLD}Testing empty map${COLOR_RESET}"
echo
./cub3d maps/empty_map.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing invalid texture${COLOR_RESET}"
echo
./cub3d maps/invalid_tex.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing map not tottaly surrounded by walls${COLOR_RESET}"
echo
./cub3d maps/invalid_walls.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with new line in the middle of the map${COLOR_RESET}"
echo
./cub3d maps/nl_middle_map.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with no player in the map${COLOR_RESET}"
echo
./cub3d maps/no_player.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing just the executable${COLOR_RESET}"
echo
./cub3d
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with wrong file extension${COLOR_RESET}"
echo
./cub3d maps/not_cub_map
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with wrong number of arguments${COLOR_RESET}"
echo
./cub3d maps/small.cub maps/small.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with no map${COLOR_RESET}"
echo
./cub3d maps/no_map.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with no texture${COLOR_RESET}"
echo
./cub3d maps/no_textures.cub
sleep 2
clear
printf "${COLOR_BLUE_BOLD}Testing with no rgb${COLOR_RESET}"
echo
./cub3d maps/no_rgb.cub
sleep 3
clear
printf "${COLOR_BLUE_BOLD}Norminette${COLOR_RESET}"
echo
echo "First removing the mlx library..." && sleep 1 && echo && make rm_mlx
echo
printf "${COLOR_GREEN_BOLD}"
norminette
printf "${COLOR_RESET}"
echo
echo "Adding the mlx library back..." && sleep 1 && echo && make get_mlx
echo
clear
printf "${COLOR_BLUE_BOLD}Compiling${COLOR_RESET}" && sleep 1 && echo && make
echo
clear
printf "${COLOR_BLUE_BOLD}Testing with a valid map${COLOR_RESET}"
echo
./cub3d maps/simple.cub
clear
echo
make fclean