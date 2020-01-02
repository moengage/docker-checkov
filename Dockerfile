FROM python:3.8-alpine

RUN adduser -D checkov

WORKDIR /home/checkov

ENV VERSION="1.0.98"

RUN pip install https://github.com/bridgecrewio/checkov/archive/${VERSION}.tar.gz

RUN chown -R checkov:checkov ./

USER checkov

ENTRYPOINT ["checkov"]

CMD ["-h"]
