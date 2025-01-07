#!/bin/bash

model_name=sceneflow # 优
model_name=eth3d # 优
model_name=middlebury # 优
model_name=kitti2015
#model_name=kitti2012
#model_name=eth3d # 优
python demo_imgs.py \
   --restore_ckpt ./weights/igev_plusplus/${model_name}.pth \
   --left_imgs    '/mnt/Data2/depth/depth20250102/left5/*.png' \
   --right_imgs   '/mnt/Data2/depth/depth20250102/right5/*.png' \
   --output_directory /mnt/Data2/depth/depth20250102/result/IGEV-plusplus/${model_name} \
   --precision_dtype float32
