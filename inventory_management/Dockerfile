# Pull the official base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app/inventory_management

# Copy files from the local file system into the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]