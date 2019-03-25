FROM alpine

LABEL "name"="filter-branch-pattern"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Filter branch using pattern"
LABEL "com.github.actions.description"="Stops workflow if the current branch does not match the pattern"
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="black"

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

