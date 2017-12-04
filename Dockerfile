# Based on erlang:20 => debian jessie
FROM elixir:1.5.2

# Add dependencies
RUN apt-get update && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs && \
    apt-get -y purge &&\
    mix local.hex --force