#! /usr/bin/env python

#import time
import rospy
import actionlib

from std_msgs.msg import Empty
from actions_quiz.msg import CustomActionMsgFeedback, CustomActionMsgResult, CustomActionMsgAction


class CustomActionMsgClass():
    # create messages that are used to publish feedback/result
    _feedback = CustomActionMsgFeedback()
    _result = CustomActionMsgResult()

    def __init__(self):
        # creates the action server object
        self._as = actionlib.SimpleActionServer("action_custom_msg_as", CustomActionMsgAction, self.goal_callback, False)
        self._as.start()


    def goal_callback(self, goal):
        # this is called when the action server is called

        # helper variables
        success = True
        r = rospy.Rate(1)

        # define the different publishers and messages that will be used
        self._pub_takeoff = rospy.Publisher('/drone/takeoff', Empty, queue_size=1)
        self._takeoff_msg = Empty()
        self._pub_land = rospy.Publisher('/drone/land', Empty, queue_size=1)
        self._land_msg = Empty()

        # get the goal work
        takeoff_or_land = goal.goal

      
        for i in range(4):
            # check that preempt (cancelation) has not been requested by the action client
            if self._as.is_preempt_requested():
                rospy.loginfo('The goal has been canselled')
                self._as.set_preempted()
                success = True
                break

            if takeoff_or_land == 'TAKEOFF':
                self._pub_takeoff.publish(self._takeoff_msg)
                self._feedback.feedback = 'Taking off...'
                self._as.publish_feedback(self._feedback)

            if takeoff_or_land == 'LAND':
                self._pub_land.publish(self._land_msg)
                self._feedback.feedback = 'Landing...'
                self._as.publish_feedback(self._feedback)

            # the sequence is computed at 1Hz
            r.sleep()

        # at this point, either the goal has been achieved (success==true)
        # or the client preempted the goal (success==false)
        # If success, then we publish the final result
        # If not success, we do not publish anything in the result
        if success:
            self._result = Empty()
            self._as.set_succeeded(self._result)


if __name__ == '__main__':
    rospy.init_node('action_custom_msg')
    CustomActionMsgClass()
    rospy.spin()
