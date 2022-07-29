FROM jupyter/scipy-notebook:2021-12-16

USER root

RUN apt-get update && apt-get -y upgrade && \
    apt-get install --no-install-recommends -y \
    build-essential && \
    apt-get clean

USER jovyan

RUN pip install \
        panoptes-client \
        panoptescli \
        panoptes-aggregation

RUN pip install \
        azure-common \
        azure-batch \
        azure-storage-blob

CMD jupyter notebook --ip='0.0.0.0' --port=8888 --no-browser --allow-root
