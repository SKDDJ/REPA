#! /bin/bash
sleep 3600
train_dit --gpus 0,1,2,3,4,5,6,7,8,9 --size 32000
# # Set the number of OpenMP threads
# export OMP_NUM_THREADS=24  # Adjust based on your testing
# export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7,8,9

# torchrun --nnodes=1 --nproc_per_node=10 generate.py \
#   --model SiT-XL/2 \
#   --num-fid-samples 1000 \
#   --path-type=linear \
#   --encoder-depth=8 \
#   --projector-embed-dims=768 \
#   --per-proc-batch-size=64 \
#   --mode=sde \
#   --num-steps=250 \
#   --cfg-scale=1.8 \
#   --guidance-high=0.7 \
#   --num-classes 1000 \
#   --classes=0,217,482,491,497,566,569,571,574,701
