FROM ruby:2.5.7

RUN apt-get update && \
    apt-get install -y mariadb-client nodejs vim --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN gem install bundler
RUN bundle install

VOLUME /app/public
VOLUME /app/tmp

CMD bundle exec puma
