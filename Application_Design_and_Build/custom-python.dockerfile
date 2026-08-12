# The line below states we will base our new image on the Latest Official Python
FROM python:3.8-buster

# Identify the maintainer of an image
LABEL version="2.0.0"
LABEL maintainer="venkivector@gmail.com"

# Add python code file
ADD Venky-python.py /

# Last is the actual command to start up Python within our Container
CMD ["python3" , "/Venky-python.py"]