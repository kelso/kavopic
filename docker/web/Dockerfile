FROM i386/ruby:2.6.5-alpine

# Install dependencies:
# - build-base: To ensure certain gems can be compiled
# - nodejs: Compile assets
# - postgresql-dev postgresql-client: Communicate with postgres through the postgres gem
# - libxslt-dev libxml2-dev: Nokogiri native dependencies
# - imagemagick: for image processing
# and more
RUN apk --update add build-base nodejs tzdata postgresql-dev postgresql-client libxslt-dev libxml2-dev imagemagick yarn python bash

# Set an environment variable to store where the app is installed inside
# of the Docker image.
ENV RAILS_ROOT /var/www/myapp
RUN mkdir -p $RAILS_ROOT

# Use the Gemfiles as Docker cache markers. Always bundle before copying app src.
# (the src likely changed and we don't want to invalidate Docker's cache too early)
# http://ilikestuffblog.com/2014/01/06/how-to-skip-bundle-install-when-deploying-a-rails-app-to-docker/
COPY Gemfile $RAILS_ROOT
COPY Gemfile.lock $RAILS_ROOT

ENV RAILS_ENV production

#ENV SECRET_KEY_BASE abcd
ENV RAILS_LOG_TO_STDOUT true

# This sets the context of where commands will be ran in and is documented
# on Docker's website extensively.
WORKDIR $RAILS_ROOT

# Prevent bundler warnings; ensure that the bundler version executed is >= that which created Gemfile.lock
RUN gem install bundler
RUN bundler install # --jobs 8 --retry 5 --without development test

# Install yarn packages
COPY package.json $RAILS_ROOT
COPY yarn.lock $RAILS_ROOT
#RUN yarn install # not needed?

RUN mkdir -p tmp/pids
RUN mkdir log

COPY . $RAILS_ROOT

#RUN rails assets:precompile
RUN RAILS_ENV=production bundle exec rake assets:precompile

# RUN rm -rf ./node_modules ./tmp/cache .browserslistrc postcss.config.js
EXPOSE 3000
CMD puma -C docker/web/puma.rb

# TODO use CMD exec syntax
# CMD ["puma", "-C", "docker/web/puma.rb"]
