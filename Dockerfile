# Build Docker image that contains 'stress' and 'htop' to produce and monitor CPU load:
#   docker build -t mjheitland/stress .
# Console 1:
#   docker run --rm mjheitland/stress stress -t 10s --cpu 8
# Console 2:
#   docker run -it --rm mjheitland/stress htop
# Console 1:
#   docker run --rm --cpus=2.5 mjheitland/stress stress -t 10s --cpu 8

FROM debian:buster
RUN apt-get update && apt-get install -y \
  stress \
  htop \
  && rm -rf /var/lib/apt/lists/*
CMD [ "stress" ]