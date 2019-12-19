FROM elixir:alpine

ENV MIX_ENV test

RUN mix local.hex --force

RUN mix archive.install hex bunt --force
RUN mix archive.install hex credo --force

WORKDIR /code
CMD ["mix", "credo", "--strict"]
