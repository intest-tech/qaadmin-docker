FROM python:3.6-alpine

RUN apk update \
&& apk add git \
&& git clone https://github.com/intest-tech/qaadmin.git
WORKDIR qaadmin
RUN pip install pipenv -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pipenv install

CMD pipenv run python manager.py runserver

EXPOSE 5000

