# Python notebooks with the Panoptes python client

Single user jupyter notebooks with the panoptes python client pre-installed for the Zooniverse.

It depends on:
+ https://hub.docker.com/r/jupyterhub/singleuser/
+ https://github.com/zooniverse/panoptes-python-client

# Usage
If you are using the python client to interact with the Zooniverse API, you will need to copy the env.list.example file and add your own username and password to the `env.list` file.
+ `cp env.list.example env.list`

Run the published image locally using the `./start_notebooks.sh` script
or manually via the following docker cmd
`docker run -it --rm --env-file ./env.list --name python_notebook -p 8888:8888 -v $(pwd)/data:/home/jovyan zooniverse/panoptes-python-notebook`

The container will run and inform you how to access the local notebook server, e.g.
```
[I 12:24:18.485 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 12:24:18.485 NotebookApp] 0 active kernels
[I 12:24:18.485 NotebookApp] The Jupyter Notebook is running at:
[I 12:24:18.485 NotebookApp] http://[all ip addresses on your system]:8888/?token=6462e704464da9b8129027558b44cde94f44c03726fb9ba9
[I 12:24:18.486 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 12:24:18.493 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=6462e704464da9b8129027558b44cde94f44c03726fb9ba9
```

# Manually build docker image
+ `docker build -t panoptes-python-notebook .`
