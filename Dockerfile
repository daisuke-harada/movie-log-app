FROM ruby:2.5.7
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs

COPY movieslog /var/movieslog
WORKDIR /var/movieslog
RUN gem update bundler
RUN bundle install