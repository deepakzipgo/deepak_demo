FROM ruby:2.5
WORKDIR /app
COPY . .
RUN bundle install
EXPOSE 5060
CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "80"]
