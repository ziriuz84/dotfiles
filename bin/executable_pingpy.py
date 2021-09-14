#!/bin/python3
import os

cmd = "ping -w 4 "
print("Server da pingare")
server = input()
os.system(cmd+server)
os.system(cmd+"www."+server)
