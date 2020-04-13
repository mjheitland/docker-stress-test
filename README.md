# Docker Stress Test

Demonstrates the usage of cgroups to limit the resource usage of Docker containers

# Build Docker image that contains 'stress' and 'htop' to produce and monitor CPU load:

docker build -t mjheitland/stress .

# Run load test without limitting CPU consumption

1. Console 1: docker run --rm mjheitland/stress stress -t 10s --cpu 8
2. Console 2: docker run -it --rm mjheitland/stress htop


# Run load test with limitting CPU consumption to 2.5 CPUs

1. Console 1: docker run --rm --cpus=2.5 mjheitland/stress stress -t 10s --cpu 8
2. Console 2: docker run -it --rm mjheitland/stress htop
