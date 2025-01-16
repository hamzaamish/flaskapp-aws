# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask in the container
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 9045 to allow access to the app
EXPOSE 9045

# Run the Flask app when the container starts
CMD ["python", "app.py"]

