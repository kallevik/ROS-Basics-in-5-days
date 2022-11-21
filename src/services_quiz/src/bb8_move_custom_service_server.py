#! /usr/bin/env python

import rospy
# from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse # you import the service message python classes
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse
from geometry_msgs.msg import Twist

move_robot = Twist()


def robot_stop():
    move_robot.linear.x = 0.0
    move_robot.angular.z = 0.0
    my_pub.publish(move_robot)

def robot_right_turn():
    move_robot.angular.z = 0.99
    my_pub.publish(move_robot)
    rospy.sleep(2)
    robot_stop()

def robot_straight(request):
    move_robot.linear.x = 0.8
    move_robot.angular.z = 0.0
    i = 0
    while i <= request.side:
        my_pub.publish(move_robot)
        rospy.sleep(1)  # rate.sleep()
        i = i+1
    robot_stop()

def robot_square(request):
    robot_straight(request)
    robot_right_turn()
    robot_straight(request)
    robot_right_turn()
    robot_straight(request)
    robot_right_turn()
    robot_straight(request)
    robot_right_turn()



def my_callback(request):
    rospy.loginfo("The service move_bb8_custom has been called")

    for i in range(request.repetitions):
        robot_square(request)
        a = i
        
   
    

    rospy.loginfo("Finished service move_bb8_custom")

    #response = MyCustomServiceMessageResponse()
    response = BB8CustomServiceMessageResponse()
    response.success = True
    return response


# Initilizes the node specified in .launch under name =""
rospy.init_node('service_move_bb8_custom_server')


my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)

# Starts a service on the topic "/move_bb8_in_circle"
# which takes an empty argument, i.e none
# and executes the my_callback function
#my_service = rospy.Service('/move_bb8_in_circle_custom', MyCustomServiceMessage, my_callback)
my_service = rospy.Service(
    '/move_bb8_in_square_custom', BB8CustomServiceMessage, my_callback)

rospy.loginfo("Service /move_bb8_in_square_custom ready")
rospy.spin()
