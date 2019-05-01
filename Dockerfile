FROM python:3-alpine
ARG VERSION
RUN apk add groff less
RUN pip install awscli==$VERSION && mkdir -p /root/.aws
ENTRYPOINT ["aws"]
CMD ["help"]
