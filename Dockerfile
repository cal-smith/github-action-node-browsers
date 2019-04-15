FROM node:10-jessie-slim

LABEL repository="https://github.com/cal-smith/github-action-node-browsers"
LABEL maintainer="cal-smith"

LABEL com.github.actions.name="Node headless browsers"
LABEL com.github.actions.description="GitHub action for running npm commands with headless browsers"
LABEL com.github.actions.icon="cloud"
LABEL com.github.actions.color="blue"

COPY . /

RUN sh setup.sh

ENTRYPOINT [ "/entrypoint.sh" ]
