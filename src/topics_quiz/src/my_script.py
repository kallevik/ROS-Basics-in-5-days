#! /usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
import time

# Initializes
move_robot = Twist()
move_robot.linear.x = 0.5
move_robot.angular.z = 0


def callback(msg):
    pub.publish(move_robot)
    if(msg.ranges[360] < 1):
        move_robot.linear.x = 0.0
        move_robot.angular.z = 0.5
    if(msg.ranges[0] < 1 and msg.ranges[400] == float('inf')):
        move_robot.linear.x = 0.5
        move_robot.angular.z = 0.0
  


# Initiate a Node named 'topics_quiz_node'
rospy.init_node("topics_quiz_node")

# Create a Publisher object, that will publish on the /cmd_vel topic
# messages of type Twist
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)


# Create a Subscriber object, that will subscribe on the /kobuki/laser/scan topic
# messages of type LaserScan
sub = rospy.Subscriber('kobuki/laser/scan', LaserScan, callback)

rospy.spin()
