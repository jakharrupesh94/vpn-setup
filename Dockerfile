# Use an official WireGuard image
FROM linuxserver/wireguard

# Set environment variables
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

# Expose WireGuard port
EXPOSE 51820/udp

# Volume to persist configuration and data
VOLUME /config

# Command to run WireGuard
CMD ["/init"]
