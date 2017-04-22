# Main Image
FROM node:6.10.2-alpine

# Environment Variables
ENV VERSION 0.1
ENV USER node
ENV APP_NAME app

# Paths
ENV YARN_PATH /tmp/cache/yarn/
ENV USER_PATH /home/$USER/
ENV APP_PATH $USER_PATH$APP_NAME/

# Switch to $USER
USER $USER

# Yarn Configuration
RUN mkdir -p $YARN_PATH \
    && chmod -R 775 $YARN_PATH \
    && yarn config set cache-folder $YARN_PATH

# App Folder
RUN mkdir -p $APP_PATH \
    && chmod -R 775 $APP_PATH

# Set Workdir
WORKDIR $APP_PATH

# Expose default port
EXPOSE 3000

# Exec node
CMD node

# This image of Alpine Linux don't contain bash
# use sh, ash, /bin/sh or /bin/ash instead
# i.e.: docker run -it --rm image_name /bin/sh
