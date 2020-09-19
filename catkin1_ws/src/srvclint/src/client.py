#! /usr/bin/env python

import sys
import rospy
from srvclint.srv import first

def takin_num(x):
    rospy.wait_for_service('prime_int')
    
    prime_int=rospy.ServiceProxy('prime_int',first)
    
    s=prime_int(x);
    return s.num1
    
   
if __name__=='__main__':
    x=int(raw_input())
    
    print("Requesting %s"%(x))
    takin_num(x)
    sys.exit(1)


