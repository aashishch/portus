FROM opensuse/portus:2.3
MAINTAINER Aashish "aashish@gmail.com"
ENV RAILS_SERVE_STATIC_FILES=true
ENV PORTUS_SECRET_KEY_BASE='ap'
ENV PORTUS_KEY_PATH='ap'
ENV PORTUS_PASSWORD='ap'
# Install the entrypoint of this image.
COPY init /

# Install Portus and prepare the /certificates directory.
RUN chmod +x /init 
    
EXPOSE 3000
ENTRYPOINT ["/init"]
