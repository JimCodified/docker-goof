FROM ghost:2.37.2 as ghost

FROM node:10.4.0 as node

# Copy manifest files
COPY --from=ghost /var/lib/ghost /var/lib/ghost

RUN apt-get update

# Install package which its vulnerabilities would show up in the layers filter
RUN apt-get -y install exiv2

ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 2368
CMD ["node" "current/index.js"]
