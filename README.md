# Private LLM Legal Assistant

This is a fully Dockerized self-hosted stack using:
- vLLM + quantized LLaMA 3
- ChromaDB for vector storage
- LlamaIndex for RAG
- Streamlit frontend
- Optional: n8n for automations

## Quick Start
```bash
docker-compose up --build
```

Ensure you set your HuggingFace token in `docker-compose.yml` under `vllm` environment as `HF_TOKEN=...`
