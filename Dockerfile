FROM jupyter/scipy-notebook

RUN pip install \
        bokeh \
        holoviews \
        panoptes-client \
        panoptescli

CMD jupyter notebook --ip='*' --port=8888 --no-browser --allow-root
