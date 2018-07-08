FROM {base_image}

LABEL maintainer = "wickedvikingstudios@gmail.com" \
      vendor = "wickedviking" \
      verison = "0.0.1" \
      description = "{image_name}" \
      licence = "MIT" \
      documentation= "https://github.com/wickedviking/{repo_name}"

ADD assets /assets
RUN chmod +x /assets/*.sh \
    && /assets/provision.sh

EXPOSE 9000
CMD ["php-fpm"]