# Step 1: Use official Python image
FROM python:3.10-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy dependencies and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Step 4: Copy application code
COPY app.py .

# Step 5: Expose port
EXPOSE 5000

# Step 6: Run the app
CMD ["python", "app.py"]
