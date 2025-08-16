# Use a minimal Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy dependency list and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the application port
EXPOSE 80

# Start the app
CMD ["python", "app.py"]
