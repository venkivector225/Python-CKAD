# The line below states we will base our new image on the Latest Official Python
FROM python3:latest

# Identify the maintainer of an image
LABEL version="2.0.0"
LABEL maintainer="venkivector@gmail.com"

# Update the image to the latest packages
RUN apt-get update
RUN apt-get upgrade -y

# Install Python packages
RUN apt-get install python3 -y

# Expose port 80
EXPOSE 80

# Last is the actual command to start up Python within our Container
CMD ["python3" , "venky-python.py"]