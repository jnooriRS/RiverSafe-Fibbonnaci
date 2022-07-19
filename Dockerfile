# Leaving base at ubuntu
FROM ubuntu
RUN chmod 700 .
#Create container to store file in
RUN mkdir doc-container 
# source then destination of container in docker if I have one
COPY ./functionfibonnaci.sh /doc-container
#when conatiner starts what is the executable
ENTRYPOINT ["/bin/bash", "/doc-container/functionfibonnaci.sh"]
#OVERCOME PERMISSION DEININED
#Build application
# Run make ./functionfibonnaci/doc-conatiner
#ephemeral- should be stateless-Use bound mount for source code then?