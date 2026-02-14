FROM ruby:3.4.1-slim

# Install system dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libmariadb-dev \
  libmariadb-dev-compat \
  pkg-config \
  && rm -rf /var/lib/apt/lists/*
  

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install 

COPY . .

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]