FROM ruby:3.3

# Install system dependencies (Debian Bookworm compatible)
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libmariadb-dev \
  nodejs \
  npm \
  sqlite3 \
  && npm install -g yarn \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install bundler
RUN gem install bundler

# Copy gem files first (cache-friendly)
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application source
COPY . .

# Internal Rails port
EXPOSE 3000

# Start Rails
CMD ["bin/rails", "server", "-b", "0.0.0.0"]