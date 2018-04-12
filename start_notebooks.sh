docker run -it --rm --env-file ./env.list --name python_notebook -p 8888:8888 -v $(pwd)/data:/home/jovyan zooniverse/panoptes-python-notebook
