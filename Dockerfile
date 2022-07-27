FROM python:3.9.12

EXPOSE 8501

USER streamlit
WORKDIR /app

COPY requirements.txt .
COPY streamlit-1.10.0-py2.py3-none-any.whl .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY app.py .

ENTRYPOINT [ "streamlit", "run"]
CMD ["app.py"]