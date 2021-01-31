FROM ruby:3.0.0-slim-buster

# Groonga(http://groonga.org/docs/install/debian.html)
RUN apt update \
  && apt install -y -V wget gcc make\
  && wget https://packages.groonga.org/debian/groonga-apt-source-latest-buster.deb \
  && apt install -y -V ./groonga-apt-source-latest-buster.deb \
  && apt update \
  && apt install -y -V groonga \
  && apt install -y libgroonga-dev

# Rroonga
RUN gem install rroonga
