# Use the python:3.8-slim-buster base image
FROM python:3.8-slim-buster

# Set the working directory in the container
WORKDIR /app

COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files to the container
COPY . /app

# Set the command to run the app.py with unbuffered output
CMD ["python", "-u", "app.py"]