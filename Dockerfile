FROM python:3.9

ARG project_dir=/projects/

WORKDIR $project_dir

ENV FLASK_ENV: 'development'

ADD requirements.txt $project_dir

RUN pip install -U pip && pip install -r requirements.txt

COPY . .

CMD gunicorn -b 0.0.0.0:$PORT app:app --log-file=-