# csapp_lab_with_docker
A docker env for csapp lab.

A docker environment setup inspired by XieGuochao's setup, LINK HERE [https://github.com/XieGuochao/csapp](https://github.com/XieGuochao/csapp), using MacBook Air (M1, 2020), with OS version: 12.0.1 (21A559). I deleted some installation in the Dockerfile to make it more simple, but if you prefer a more versatile environment, be sure to go see his repo.

# Commands needed
The first time to create a container (make sure the current directory is where the Dockerfile at):

`docker run -it -v [path with lab codes on your pc]:[path created in your container] --name=[your container name] --platform=linux/x86_64 [name of image to use] /bin/bash`

Then every time you run the container:

`docker run -it --platform linux/x86_64 -v [path with lab codes on your pc]:[path created in your container] [name of image to use] /bin/bash`
