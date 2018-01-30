FROM ubuntu:latest


ENV WORK=/home

WORKDIR ${WORK}
EXPOSE 22

ENV PATH  ${WORK}/mpich/bin:${PATH}

COPY setup.sh ${WORK}
RUN  ./setup.sh 
RUN  rm -f ./setup.sh
