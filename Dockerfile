# ubuntu 22.04
FROM ubuntu:jammy-20240627.1

# Avoid warnings by switching to noninteractive for the build process
ENV DEBIAN_FRONTEND=noninteractive

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["tail", "-F", "/dev/null"]
