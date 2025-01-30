#!/bin/bash
source ascii_art.sh

clear

# parameter 1
if [[ "$1" == "--yellow"  ]];then
     color="yellow"
elif [[ "$1" == "--red" ]]; then
        color="red"
elif [[ "$1" == "--green" ]]; then
        color="green"
else
  color="white"
  fi

# parameter 2
if [[ "$2" == "--pikachu" ]]; then
  ascii="pikachu"
elif [[ "$2" == "--anime" ]]; then
  ascii="anime0"
elif [[ "$2" == "--hydra" ]]; then
  ascii="hydra"
elif [[ "$2" == "--cat" ]]; then
  ascii="cat"
else
  ascii="pikachu"
fi

show_ascii() {

  if [ "$ascii" == "pikachu" ]; then
    echo "$pika"
  elif [ "$ascii" == "anime0" ]; then
    echo "$anime0"
  elif [ "$ascii" == "hydra" ]; then
    echo "$hydra"
  elif [ "$ascii" == "cat" ]; then
    echo "$cat_"
  fi

}

draw_info() {
        
  booted_for=$( uptime --pretty )
  clock=$(date +"%H:%M")
  average_time=$(uptime | awk -F'load average:' '{print $2} ' | xargs)
  show_ascii
  echo ""
  ansi --$color "Clock   | $clock"
  ansi --$color "Running | $booted_for"
  ansi --$color "Average | $average_time"


}


main() {
        
        draw_info

}
main
