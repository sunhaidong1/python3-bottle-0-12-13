FROM swr.cn-east-3.myhuaweicloud.com/op_svc_cse/python-x86_64:3-int-1.0
WORKDIR /var/trade-algo-shandong-dayahead-price-forecast
COPY ./ /var/trade-algo-shandong-dayahead-price-forecast/
RUN wget -c https://cmake.org/files/LatestRelease/cmake-3.27.0-rc1-linux-aarch64.tar.gz
RUN tar -zxvf cmake-3.27.0-rc1-linux-aarch64.tar.gz && cd cmake-3.27.0-rc1-Linux-x86_64/bin && ln -s /var/trade-algo-shandong-dayahead-price-forecast/cmake-3.27.0-rc1-Linux-x86_64/bin/cmake /usr/bin/cmake
RUN pipreqs --debug ./
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple xgboost==1.4.2
CMD [ "python", "./app.py" ]
