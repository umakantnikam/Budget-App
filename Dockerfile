FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /app
COPY . .

RUN gem install bundler
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
