FROM jupyterhub/singleuser

RUN pip install panoptes-client

CMD jupyter notebook --ip='*' --port=8888 --no-browser --allow-root
