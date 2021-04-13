from hyperlpr import *
import cv2
import sys

if __name__ == '__main__' :
    
    file = sys.argv[1]
    image = cv2.imread(file)
    print(HyperLPR_plate_recognition(image))