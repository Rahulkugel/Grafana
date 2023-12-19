# Use an official Prometheus runtime as a parent image
FROM prom/prometheus

# Copy the Prometheus configuration file into the container
COPY prometheus.yml /etc/prometheus/

# Expose the Prometheus port
EXPOSE 9090

# Start Prometheus
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]
