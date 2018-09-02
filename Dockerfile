FROM python:3.6-alpine

LABEL author.name="Shin Yang" \
      author.email="ityoung@foxmail.com" \
      version="0.1" \
      description="QA Admin, a testing report management system."

ENV DOCKER 1

RUN apk update \
&& apk add git \
&& git clone https://github.com/intest-tech/qaadmin.git
WORKDIR qaadmin
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

CMD python manage.py runserver

EXPOSE 5000
