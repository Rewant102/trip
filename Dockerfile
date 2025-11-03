# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory to /app
WORKDIR /app

# Copy the required files and directory into the container
COPY service.py /app/service.py
COPY model.joblib /app/model.joblib
COPY src/ /app/src/
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8080

# Command to run the app
CMD ["python", "service.py"]
