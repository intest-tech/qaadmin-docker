FROM python:3.6-alpine

RUN git clone https://github.com/intest-tech/qaadmin.git
WORKDIR qaadmin
RUN pip install pipenv \
&& pipenv install

CMD ['python', 'manager.py', 'runserver']
