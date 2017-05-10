FROM python:3.6-alpine
MAINTAINER BJ Dierkes <derks@datafolklabs.com>
WORKDIR /data
COPY requirements.txt /data/
RUN pip install --no-cache-dir -r requirements.txt \
    && ln -s /usr/local/bin/markdown_py /usr/bin/markdown \
    && rm -f /data/requirements.txt
ENTRYPOINT ["/bin/ash", "-c", "/usr/bin/markdown ${*}", "--"]
