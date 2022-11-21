#! /usr/bin/env python
#import rospkg
import rospy
#from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageRequest # you import the service message python classes 
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageRequest

print("hello")
# Initilizes the node specified in .launch under name =""
rospy.init_node('service_move_bb8_custom_client') 

# Wait for the service client /move_bb8_in_circle to be running
#rospy.wait_for_service('/move_bb8_in_circle_custom')
rospy.wait_for_service('/move_bb8_in_square_custom')


# Create the connection to the service 
move_bb8_custom_service_client = rospy.ServiceProxy('/move_bb8_in_square_custom',BB8CustomServiceMessage)

# Create an object of type EmptyRequest
move_bb8_custom_request_object = BB8CustomServiceMessageRequest()
move_bb8_custom_request_object.side = 2
move_bb8_custom_request_object.repetitions = 2

rospy.loginfo("Doing Service Call...")
rospy.loginfo(move_bb8_custom_request_object)


result = move_bb8_custom_service_client(move_bb8_custom_request_object) 
rospy.loginfo(str(result))

# Create an object of type EmptyRequest
move_bb8_custom_request_object = BB8CustomServiceMessageRequest()
move_bb8_custom_request_object.side = 3
move_bb8_custom_request_object.repetitions = 1

rospy.loginfo("Doing Service Call...")
rospy.loginfo(move_bb8_custom_request_object)

result = move_bb8_custom_service_client(move_bb8_custom_request_object) 
rospy.loginfo(str(result))
