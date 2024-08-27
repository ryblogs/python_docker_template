# Use the official Python 3.12 slim base image
FROM python:3.12-slim-bookworm

# Set the working directory inside the container
WORKDIR /app

COPY setup.py /app/setup.py

RUN mkdir -p /app/src/myproj

# Install the package in editable mode from the mounted directory
RUN pip install -e .
