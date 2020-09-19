#! /usr/bin/env python
import sys
import rospy
from srvclint.srv import first
from srvclint.srv import firstResponse
def handle_prime(req):
    k=req.num
    s=[2]
    
    print"printing thr prime Number " 
    for i in range(3,k+1,1):
        l=0
        for j in range(2,i-1,1):
            if(i % j ==0):
                l=1
        if(l !=1):

            s.append(i)
            print("%s "%(i))
    return firstResponse(s)
    
    
def prime_int():
    rospy.init_node('prime_Number')
    s=rospy.Service('prime_int',first,handle_prime)
    
    rospy.spin()

if __name__ == '__main__':
    prime_int()
    sys.exit(1)
