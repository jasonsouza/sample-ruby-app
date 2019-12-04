FROM ruby:2.6.5

RUN apt-get update -qq && apt-get install -y build-essential \
    sqlite3 \
    libxml2-dev libxslt1-dev \
    nodejs

ENV PROJECT /project
RUN mkdir $PROJECT
WORKDIR $PROJECT

ADD Gemfile* $PROJECT/ 
RUN bundle install