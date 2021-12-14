FROM jupyter/scipy-notebook

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

CMD jupyter notebook --ip='0.0.0.0' --port=8888 --no-browser --allow-root
