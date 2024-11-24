# Robot Workspace Installation and Simulation Guide

This repository contains a ROS2 package for simulating multiple robots in a Gazebo environment. Follow the steps below to install, build, and run the simulations.

## Installation and Build

1. Clone robot_ws into your home directory.

2. Build the workspace:
   ```bash
   cd ~/robot_ws
   colcon build
   ```

## Sourcing the Workspace

Before running any ROS2 commands, source the workspace setup file:
   ```bash
   source ~/robot_ws/install/setup.bash
   ```

## Running the Simulation

Start the multi-robot simulation in Gazebo:
   ```bash
   ros2 launch turtlebot3_multi_robot gazebo_multi_nav2_world.launch.py enable_rviz:=False
   ```

- This command launches a simulation with 4 robots and disables the visualization system (RViz).
- **Note:** The process might take a few minutes to initialize. Please wait until it completes.

## Moving a Robot Agent

1. Navigate to the `moving_turtles` folder where an agent is preconfigured to control one of the simulated robots.

2. Start the ROS bridge for communication:
   ```bash
   ros2 launch rosbridge_server rosbridge_websocket_launch.xml
   ```

3. Launch the agent to move a robot linearly:
   ```bash
   ./gradlew run
   ```
