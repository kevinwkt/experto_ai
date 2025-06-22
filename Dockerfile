FROM nvidia/cuda:12.1.1-cudnn8-runtime-ubuntu22.04

# System dependencies
RUN apt-get update && apt-get install -y git curl build-essential python3 python3-pip

# Set workdir
WORKDIR /app

# Install Python packages
RUN pip3 install --upgrade pip
RUN pip3 install vllm streamlit chromadb llama-index

# Expose ports for vllm and streamlit
EXPOSE 8000 8501

# Copy entrypoint script
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
