FROM ruby:2.3
MAINTAINER Bugs Bunny <bbunny@rubyplus.com>

# RUN apt-get update && \
#     apt-get install -y net-tools

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

# Start server
CMD ["ruby", "server.rb"]
