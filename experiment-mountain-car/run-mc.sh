#!/bin/zsh
gymz-controller gym MountainCar-v0.json &
mpirun -np 6 music nest_mc.music 