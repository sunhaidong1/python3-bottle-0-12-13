FROM swr.cn-east-3.myhuaweicloud.com/op_svc_cse/python-x86_64:3-int-1.0
RUN wget -c https://github.com/Kitware/CMake/releases/download/v3.17.0-rc3/cmake-3.17.0-rc3.tar.gz
RUN tar zxvf cmake-3.17.0-rc3.tar.gz
RUN cd cmake-3.17.0-rc3./bootstrap
RUN gmake
RUN gmake install
WORKDIR /home/app
COPY . .
CMD [ "python", "./app.py" ]
