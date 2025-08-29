FROM bitnami/suitecrm:8-debian-12

# Switch to root for configuration
USER root

# Set environment for production
ENV BITNAMI_DEBUG=false
ENV ALLOW_EMPTY_PASSWORD=no
ENV SUITECRM_ENABLE_HTTPS=yes
ENV SUITECRM_EXTERNAL_HTTPS=yes

# Configure PHP settings for production
ENV PHP_MEMORY_LIMIT=756M
ENV PHP_MAX_EXECUTION_TIME=180
ENV PHP_MAX_INPUT_TIME=180
ENV PHP_POST_MAX_SIZE=50M
ENV PHP_UPLOAD_MAX_FILESIZE=50M

# Configure Apache for App Platform
ENV APACHE_HTTP_PORT_NUMBER=8080
ENV APACHE_HTTPS_PORT_NUMBER=8443

# Switch back to non-root user
USER 1001

# Expose port for App Platform
EXPOSE 8080 8443