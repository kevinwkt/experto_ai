import streamlit as st
from llama_index import VectorStoreIndex, SimpleDirectoryReader

st.title("Private Legal Assistant")

documents = SimpleDirectoryReader("data").load_data()
index = VectorStoreIndex.from_documents(documents)
query_engine = index.as_query_engine()

q = st.text_input("Ask your legal question:")
if q:
    st.write(query_engine.query(q).response)
