FROM tensorflow/tensorflow:2.6.0-gpu
ADD 3bf863cc.pub /etc/apt/keyrings/3bf863cc.pub
RUN echo "deb [signed-by=/etc/apt/keyrings/3bf863cc.pub] https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/ /" | tee -a /etc/apt/sources.list.d/cuda.list
RUN apt-get update
RUN apt-get install -y zsh tmux wget git libsndfile1
RUN pip install ipython && \
    pip install git+https://github.com/wpcfan/TensorFlowTTS.git && \
    pip install git+https://github.com/repodiac/german_transliterate.git#egg=german_transliterate
RUN mkdir /workspace
WORKDIR /workspace
