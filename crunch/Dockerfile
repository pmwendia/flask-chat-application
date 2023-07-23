# # Use the official Python image as the base image
# FROM python:3.9-slim

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the requirements file first to leverage Docker's cache
# COPY requirements.txt .

# # Install the required dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy the Flask app code into the container
# COPY . .

# # Expose the port the Flask app will be running on
# EXPOSE 5000

# # Start the Flask app
# CMD ["python", "main.py"]
# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]