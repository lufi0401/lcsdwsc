FROM rust:slim

ENV ROCKET_ADDRESS=0.0.0.0 ROCKET_PORT=5000
EXPOSE $ROCKET_PORT
ADD lcsdwsc /app
WORKDIR /app
RUN rustup default nightly && cargo build --release

CMD ["cargo", "run", "--release"]