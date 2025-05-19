# Use official Python image with slim footprint
FROM python:3.9-slim

# Create a non-root user
RUN adduser --disabled-password --gecos '' appuser

# Set work directory
WORKDIR /app

# Copy application files
COPY app.py .

# Install Flask
RUN pip install --no-cache-dir flask

# Switch to non-root user
USER appuser

# Run the app
CMD ["python", "app.py"]
