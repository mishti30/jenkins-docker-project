# collect source image for python
FROM python:2.7
# copy source code from src to /code
COPY src/ /code
# define workdir path
WORKDIR /code
# copy requirement file in code directory 
COPY requirements.txt .
# Install all app requirements 
RUN pip install -r requirements.txt
# Expose port in image
EXPOSE 5000
# Run code as a entrypoint
CMD python app.py
