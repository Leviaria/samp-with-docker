This Dockerfile will create an image based on Ubuntu 18.04, then it will download the SAMP 0.3.7 R5 server, unpack it to the /opt/ directory, and expose the necessary port 7777/udp. Finally, it will run the server using the default config file.
You can then build the image using the command : docker build -t my-samp-image .
And then run the container using : docker run -p 7777:7777/udp my-samp-image
Note that you can change my-samp-image with the name of your image and you can set the config file by replacing "server.cfg" with the name of your config file.