# Use official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app runs on
EXPOSE 8000

# Start the app with Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
