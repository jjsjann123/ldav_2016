#!/usr/bin/python
from skimage import data, img_as_float
from skimage.measure import structural_similarity as ssim
import cv2
import sys

im1 = img_as_float( cv2.cvtColor( cv2.imread(sys.argv[1]), cv2.COLOR_RGB2GRAY ) )
im2 = img_as_float( cv2.cvtColor( cv2.imread(sys.argv[2]), cv2.COLOR_RGB2GRAY ) )
print (ssim(im1, im2))

