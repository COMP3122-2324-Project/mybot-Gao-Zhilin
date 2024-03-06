# Use the python:3.8-slim-buster base image
FROM python:3.8-slim-buster

# Set environment variable
ENV OPENROUTER_API_KEY "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"

# Set the working directory in the container
WORKDIR /app

COPY requirements.txt /app/

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files to the container
COPY . /app

# Set the command to run the app.py with unbuffered output
CMD ["python", "-u", "app.py"]