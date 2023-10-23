FROM swr.cn-east-3.myhuaweicloud.com/op_svc_cse/python-x86_64:3-int-1.0
WORKDIR /home/app
COPY . .
CMD [ "python", "./app.py" ]
