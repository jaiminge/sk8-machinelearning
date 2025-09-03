    # Use a slim Python base image
    FROM python:3.10-slim
    # Set the working directory inside the container
    WORKDIR /app
    # Copy the requirements file and install dependencies
    COPY requirements.txt .
    RUN pip install --no-cache-dir -r requirements.txt
    # Copy the entire application directory into the container
    COPY . .
    # Expose the default Streamlit port
    EXPOSE 8501
    # Command to run the Streamlit application
    CMD ["streamlit", "run", "app.py", "--server.enableCORS", "false", "--server.enableXsrfProtection", "false"]
