FROM ruby:3.0-slim

WORKDIR /site

# Install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy gemfile and install dependencies
COPY Gemfile Gemfile.lock* ./
RUN bundle install

# Copy the rest of the site
COPY . .

# Expose port 4000 for Jekyll serve
EXPOSE 4000

# Set default command
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]