# coding:utf-8
import os
import time
from glob import glob

import numpy as np
from PIL import Image

import model

# ces

paths = glob('./test/*.*')


def ocr(img_path):
    im = Image.open(img_path)
    img = np.array(im.convert('RGB'))
    t = time.time()
    '''
    result,img,angel分别对应-识别结果，图像的数组，文字旋转角度
    '''
    result, img, angle = model.model(
        img, model='pytorch', adjust=True, detectAngle=False)
    print("It takes time:{}s".format(time.time() - t))
    print("---------------------------------------")
    for key in result:
        print(result[key][1])


if __name__ == '__main__':
    root = './test'
    for p in os.listdir('./test'):
        if not p.startswith('t'):
            continue
        p = os.path.join(root, p)
        ocr(p)
