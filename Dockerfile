FROM rust:slim

#ENV ROCKET_ADDRESS=0.0.0.0 ROCKET_PORT=5000
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE $ROCKET_PORT
ADD lcsdwsc /app
WORKDIR /app
RUN rustup default nightly && cargo build --release

CMD ["bash", "-c", "ROCKET_PORT=${PORT-5000} cargo run --release --verbose"]