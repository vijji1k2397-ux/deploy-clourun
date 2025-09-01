# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy dependencies file and install
COPY requirements.txt .
EXPOSE 8080
RUN pip install --no-cache-dir -r requirements.txt

# Copy your app code
COPY . .

# Run the application
CMD ["python", "app.py"]
