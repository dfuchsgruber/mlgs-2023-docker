FROM ls1tum/artemis-python-docker:latest

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade-pip \
    && pip install --no-cache-dir -r requirements.txt
COPY . .