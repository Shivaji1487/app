FROM registry.access.redhat.com/ubi8/ubi

# Set the working directory in the image
WORKDIR /app

# Copy files from host to container
COPY . /app

# Install necessary packages
RUN dnf update -y && \
    dnf install -y python3 python3-pip && \
    dnf clean all

# Set environment variable
ENV NAME World

# Run the Python application
CMD ["python3", "app.py"]
