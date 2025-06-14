FROM rocker/r-ver:4.5.0

ENV TZ=Asia/Tokyo
# 必要なLinuxパッケージ
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y git fonts-ipaexfont fonts-noto-cjk && \
    apt-get install -y wget unzip git pandoc && \
    apt-get install -y libjpeg-dev libv8-dev && \
    apt-get -y install ffmpeg libmagick++-dev && \
    apt-get install -y clang make&& \
    apt-get install -y libcurl4-openssl-dev libssl-dev libxml2-dev libfontconfig1-dev && \
    apt-get install -y libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev &&\
    apt-get install -y libtiff5-dev cmake librsvg2-dev && \
    apt-get clean

# Pythonの環境を構築
RUN apt-get install -y python3 python3-dev python3-pip python3-venv && \ 
    apt-get clean
RUN python3 -m venv ~/venv
RUN ~/venv/bin/pip install --upgrade pip
RUN ~/venv/bin/pip install radian
RUN ~/venv/bin/pip install numpy pandas openpyxl ipykernel
RUN ~/venv/bin/pip install jupyter jupyter-client notebook
RUN ~/venv/bin/python -m ipykernel install --user
ENV PATH="/root/venv/bin:${PATH}"

# Quartoのインストール（Arm64版を使用）
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.7.31/quarto-1.7.31-linux-arm64.tar.gz
RUN mkdir ~/opt
RUN tar -C ~/opt -xvzf quarto-1.7.31-linux-arm64.tar.gz
RUN mkdir ~/.local/bin
RUN ln -s ~/opt/quarto-1.7.31/bin/quarto ~/.local/bin/quarto
ENV PATH="/root/.local/bin:${PATH}"

# Rのパッケージのインストール
COPY install_r.r install_r.r
RUN ["r", "install_r.r"]