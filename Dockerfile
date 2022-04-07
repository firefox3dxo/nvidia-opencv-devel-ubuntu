FROM nvidia/cuda:11.2.2-cudnn8-devel-ubuntu20.04
COPY ./sources.list /etc/apt/
RUN  apt-get update && DEBIAN_FRONTEND=noninteractive apt install -y tzdata cmake libopencv-dev wget libgoogle-glog-dev gdb &&\
     cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# sudo docker build  -t f3/nvidia-opencv-devel:v1.0 . 

