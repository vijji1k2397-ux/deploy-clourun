# Use official Python slim image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy dependencies file and install
COPY requirement.txt .

RUN pip install --no-cache-dir -r requirement.txt

# Copy your application code
COPY . .

# Tell Cloud Run what port to expose
EXPOSE 8080

# Run the app using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "main:app"]
