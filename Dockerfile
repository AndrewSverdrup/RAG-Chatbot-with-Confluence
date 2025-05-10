FROM python:3.10

ARG BUILD_LOCAL

ENV STREAMLIT_BROWSER_GATHER_USAGE_STATS=false

COPY requirements.txt ./

RUN pip install -r requirements.txt

RUN mkdir -p /app

WORKDIR /app

COPY . /app

WORKDIR /app/src

CMD ["streamlit", "run", "streamlit.py"]

# docker run -p 8501:8501 rag-chatbot
# docker run -p 8501:8501  -it rag-chatbot /bin/bash
# cd src
# streamlit run streamlit.py

