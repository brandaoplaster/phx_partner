FROM elixir:1.13.3-alpine

WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

COPY . .

RUN mix do deps.get, deps.compile

COPY start.sh ./

CMD ["sh", "./start.sh"]