FROM gitlab/gitlab-runner
MAINTAINER Johann Lange <johannlange@yahoo.de>

# Register the gitlab-runner
ENTRYPOINT gitlab-runner register \
  --non-interactive \
  --url $URL \
  --registration-token $TOKEN \
  --executor "docker" \
  --docker-image $DOCKER_IMAGE \
  --description $DESCRIPTION \
  --tag-list $TAGS \
  --run-untagged=$RUN_UNTAGGED \
  --locked=$LOCKED \
  --access-level=$ACCESS_LEVEL && \
  gitlab-runner run
