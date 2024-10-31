# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /FLASK-TODO

# Copy the current directory contents into the container at /app
COPY . /FLASK-TODO

# Install any needed packages specified in requirements.txt
# Ensure you have a requirements.txt file with all dependencies listed
RUN pip install --no-cache-dir -r requirements.txt

# Run app.py when the container launches
CMD ["python", "app.py"]