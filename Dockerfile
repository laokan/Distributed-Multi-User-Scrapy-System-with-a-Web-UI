FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#CMD [ "python", "./manage.py", "runserver", "0.0.0.0:8000" ]
CMD [ "./start.sh" ]
