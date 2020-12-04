#!/bin/zsh
gymz-controller gym FrozenLake-v0.json &
mpirun -np 6 music nest_fl.music 
