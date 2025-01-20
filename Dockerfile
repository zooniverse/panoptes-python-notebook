FROM jupyter/scipy-notebook:python-3.10

USER root

RUN apt-get update && apt-get -y upgrade && \
    apt-get install --no-install-recommends -y build-essential python3-dev && \
    apt-get clean

USER jovyan

RUN conda install hdbscan=0.8.28 \
 && conda clean -afy

RUN pip install \
    azure-batch \
    azure-common \
    azure-storage-blob \
    panoptes-client \
    panoptescli \
    panoptes-aggregation

CMD jupyter notebook --ip='0.0.0.0' --port=8888 --no-browser --allow-root
