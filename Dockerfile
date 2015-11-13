FROM ruby:2.2.2

# Groonga(http://groonga.org/docs/install/debian.html)
RUN echo "deb http://packages.groonga.org/debian/ jessie main" >> /etc/apt/sources.list.d/groonga.list \
  && echo "deb-src http://packages.groonga.org/debian/ jessie main" >> /etc/apt/sources.list.d/groonga.list \
  && apt-get update \
  && apt-get install -y --allow-unauthenticated groonga-keyring \
  && apt-get update \
  && apt-get install -y libgroonga-dev

# Rroonga
RUN gem install rroonga
