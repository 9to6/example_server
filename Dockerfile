FROM ruby:2.5-slim
LABEL maintainer="Teukgeon <ktk0011@gmail.com>"

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
WORKDIR /app

RUN gem uninstall -i /usr/local/lib/ruby/gems/2.5.0 bundler -a -x
RUN gem install bundler
RUN bundle install

ADD . /app
ENTRYPOINT ["/bin/bash", "-c", "ruby /app/main.rb"]

EXPOSE 4567
