#base image
FROM ubuntu: latest  
#create a workinging directory
WORKDIR /testapp
#copy all contents from host to docker file system
COPY . /testapp
#install the dependencies
RUN apt-get update && apt-get install -y python3 python3-pip
#command to start the applocaiton
CMD ["python3", "app.py"]
