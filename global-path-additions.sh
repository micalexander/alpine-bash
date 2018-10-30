#!/bin/bash

add_path() {
  if [[ "$PATH" =~ (^|:)"${1}"(:|$) ]]
  then
      return 0
  fi
  export PATH=$PATH:${1}
}

add_path /usr/local/ruby/bin
add_path /usr/local/node/bin
add_path /usr/local/php/bin
add_path /usr/local/python2/bin
add_path /usr/local/python3/bin

export LD_LIBRARY_PATH=/usr/local/ruby/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/node/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/php/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/python2/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/python3/lib
