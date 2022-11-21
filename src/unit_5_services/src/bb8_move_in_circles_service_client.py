#! /usr/bin/env python
import rospkg
import rospy
from std_srvs.srv import Empty, EmptyRequest


# Initilizes the node specified in .launch under name =""
rospy.init_node('service_move_bb8_in_circle_client') 

# Wait for the service client /move_bb8_in_circle to be running
rospy.wait_for_service('/move_bb8_in_circle')

# Create the connection to the service 
move_bb8_in_circle_service_client = rospy.ServiceProxy('/move_bb8_in_circle',Empty)

# Create an object of type EmptyRequest
move_bb8_in_circle_request_object = EmptyRequest()

# Send through the connection the path to the trajectory file to be executed
result = move_bb8_in_circle_service_client(move_bb8_in_circle_request_object) 
print(result)
