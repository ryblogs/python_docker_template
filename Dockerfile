# Use the official Python 3.13 slim base image
FROM python:3.13-slim-bookworm

# Create a non-root user and group
RUN addgroup --system appuser && adduser --system --ingroup appuser appuser

# Set the working directory
WORKDIR /app

# Create the directory structure and fix ownership
RUN mkdir -p /app/src/package && chown -R appuser:appuser /app

# Copy setup.py and install dependencies as root
COPY . /app/
RUN pip install -e .

# Switch to non-root user
USER appuser

# Default command (optional)
CMD ["python"]
