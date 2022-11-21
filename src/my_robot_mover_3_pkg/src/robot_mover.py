#! /usr/bin/env python

# Import the Python library for ROS
import rospy
from geometry_msgs.msg import Twist

# Initiate a Node named 'robot_mover_node'
rospy.init_node("robot_mover_node")

# Create a Publisher object, that will publish on the /cmd_vel topic
# messages of type Twist
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

# Set a publish rate of 2 Hz
rate = rospy.Rate(2)

move = Twist()

# Move the robot with a linear vel in x-axis
move.linear.x = 0.5                

# Move the robot with a angular vel in z-axis
move.angular.z = 0.5

# Create a loop that will go until someone stops the program execution
while not rospy.is_shutdown():
  # Publish the message within the 'count' variable
  pub.publish(move)

  # Make sure the publish rate maintains at 2 Hz
  rate.sleep()                             