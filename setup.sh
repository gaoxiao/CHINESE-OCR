# conda create -n chinese-ocr python=2.7 pip scipy numpy PIL jupyter##运用conda 创建python环境
# source activate chinese-ocr

export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

pip install easydict  ##选择国内源，速度更快
pip install keras==2.0.8    
pip install Cython opencv-python  
pip install matplotlib  
pip install -U pillow 
pip install  h5py lmdb mahotas 
conda install pytorch=0.1.12 cuda90 torchvision -c soumith
pip install futures==3.1.1 
# conda install tensorflow=1.3 tensorflow-gpu=1.3 ##解决cuda报错相关问题
cd ./ctpn/lib/utils
sh make.sh


