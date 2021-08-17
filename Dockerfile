FROM python:3.8-alpine

LABEL "com.github.actions.name"="React to S3 Action"
LABEL "com.github.actions.description"="Build a React.js web app and sync to an AWS S3 repository"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.1.0"
LABEL repository="https://github.com/chknim/deploy-react2s3-action"
LABEL homepage="https://github.com/chknim"
LABEL maintainer="Chakrit Nimmanant <cnimmana@gmail.com>"

ENV AWSCLI_VERSION='1.18.14'
RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
