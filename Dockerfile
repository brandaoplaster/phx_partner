FROM elixir:1.12-alpine AS build

RUN apk update \
    && apk add --no-cache tzdata ncurses-libs postgresql-client build-base openssh-client \
    && apk del tzdata

WORKDIR /phx_partner

RUN mix local.hex --force && mix local.rebar --force

COPY mix.exs mix.lock ./
COPY config config

COPY . ./
RUN mix do compile --warnings-as-errors, release
