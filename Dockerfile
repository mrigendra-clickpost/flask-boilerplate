FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose the Flask port
EXPOSE 5000

# Run with Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
