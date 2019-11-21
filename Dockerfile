FROM gorialis/discord.py:3.8-alpine-pypi-minimal
RUN python -m pip install redis

WORKDIR /usr/src/app
ADD src/* ./
COPY token.txt .

CMD ["python", "./main.py"]

