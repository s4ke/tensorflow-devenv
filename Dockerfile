FROM tensorflow/tensorflow:2.0.1-gpu-py3-jupyter

RUN apt-get update && \
    apt-get install -y \
        screen \
        ssh \
        git \
        vim \
        htop \
        monitor \
        virtualenv \
        python3-venv \
        python3-virtualenv \
        python3-setuptools \
        openssh-server


CMD ["bash", "-c", "source /etc/bash.bashrc && service ssh restart && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]