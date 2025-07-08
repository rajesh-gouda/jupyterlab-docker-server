# Use a base JupyterLab image (you can also use the AWS ECR one if necessary)
# FROM jupyter/base-notebook:python-3.11
# if i want to use ecr then 
FROM 050752637092.dkr.ecr.us-east-1.amazonaws.com/jupyternotebook

# Set working directory inside container
WORKDIR /workspace

# Optional: install any pip packages
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 8888

# Start Jupyter Lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
