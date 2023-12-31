#!/bin/bash
# When use sensors
cd ../car/src
python3 main.py &
cd ../../simulator
# When use OBU
# cd ../car
# python3 obu.py hlv &
# cd ../simulator
python3 rviz_simulator.py hlv &
python3 simple_ui.py &
cd ../planning
python3 hlv_planning.py &
cd ../utils
python3 rate_by_dist.py hlv &
rosrun v2x hlv