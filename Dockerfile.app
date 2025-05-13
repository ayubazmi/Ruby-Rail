# Use the official Ruby image
FROM ruby:3.1.2

# Install Node.js, Yarn, and PostgreSQL client
RUN apt-get update -qq && \
    apt-get install -y curl gnupg2 postgresql-client && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g yarn

# Set the working directory
WORKDIR /app

# Install Ruby dependencies
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy rest of the app
COPY . .

# Install JS dependencies (optional, but useful for jsbundling/cssbundling)
RUN yarn install

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port for Rails server
EXPOSE 3000

# Start Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]

