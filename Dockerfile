FROM ubuntu
RUN apt update -y && apt install -y python3 python3-pip vim
RUN pip3 install jupyter ipython
COPY requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt
RUN mkdir /project
EXPOSE 8888
#CMD ["jupyter notebook -y --no-browser --allow-root --port=8888 --ip=0.0.0.0"]
