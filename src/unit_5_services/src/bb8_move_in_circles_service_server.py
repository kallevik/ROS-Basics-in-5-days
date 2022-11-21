#! /usr/bin/env python

import rospy
from std_srvs.srv import Empty, EmptyResponse
from geometry_msgs.msg import Twist

move_robot = Twist()


def my_callback(request):
    rospy.loginfo("The service move_bb8_in_circle has been called")
    move_robot.linear.x = 0.2
    move_robot.angular.z = 0.2
    my_pub.publish(move_robot)
    rospy.loginfo("Finished service move_bb8_in_circle")
    return EmptyResponse()  # the service Response class, in this case EmptyResponse
    # return MyServiceResponse(len(request.words.split()))


# Initilizes the node specified in .launch under name =""
rospy.init_node('service_move_bb8_in_circle_server')


my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

# Starts a service on the topic "/move_bb8_in_circle"
# which takes an empty argument, i.e none
# and executes the my_callback function
my_service = rospy.Service('/move_bb8_in_circle', Empty, my_callback)

rospy.loginfo("Service /move_bb8_in_circles ready")
rospy.spin()
