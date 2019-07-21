FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /website
WORKDIR /website
COPY Gemfile /website/Gemfile
RUN chmod +x /website/Gemfile
COPY Gemfile.lock /website/Gemfile.lock
RUN chmod +x /website/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /website

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
