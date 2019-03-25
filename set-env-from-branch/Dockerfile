FROM alpine

LABEL "name"="set-env-from-branch"
LABEL "maintainer"="Rene Meza <developers+github@unacast.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Set Env From Branch"
LABEL "com.github.actions.description"="Creates env.sh file to contain the ENV variable from current branch"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD [""]

