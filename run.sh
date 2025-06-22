#!/bin/bash
# Start vLLM in the background
python3 -m vllm.entrypoints.openai.api_server \
  --model TheBloke/Llama-3-13B-Instruct-AWQ \
  --quantization awq \
  --tensor-parallel-size 1 &

# Start Streamlit app
streamlit run app.py --server.port=8501 --server.address=0.0.0.0
