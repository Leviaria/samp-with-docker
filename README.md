## Welcome to SAMP-With-Docker

This repository contains the necessary Dockerfile to run a SAMP 0.3.7 R5 server.

## Prerequisites

Before you can build and run the Docker image, you'll need to have Docker installed on your machine. If you don't have Docker installed, you can find installation instructions [here](https://docs.docker.com/install/).

## Building the image

Once you have Docker installed, you can build the image using the command:

```
docker build -t my-samp-image .
```

Replace `my-samp-image` with the name of your image.

## Running the container

Once the image is built, you can run the container using the command:

```
docker run -p 7777:7777/udp my-samp-image
```

Replace `my-samp-image` with the name of your image. You can also set the config file by replacing "server.cfg" with the name of your config file.

## Contributing

If you find any bugs or have suggestions for improvements, feel free to open an issue or submit a pull request. I would love to hear your feedback!