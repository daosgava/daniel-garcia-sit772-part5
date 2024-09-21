# Pull the base image.
ARG PYTHON_VERSION=3.12.5
FROM python:${PYTHON_VERSION}-slim as base

# Set the working directory inside the container
WORKDIR /app/book_catalog

# Copy files from the local file system into the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the application listens on
EXPOSE 8000

# Run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port=8000"]
