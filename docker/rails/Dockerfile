FROM ruby:2.6.3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq && apt-get install -y --no-install-recommends build-essential nodejs curl git mariadb-client yarn sudo

# AWS System Manager セッションマネージャ用のエージェントをインストール
RUN curl https://s3.ap-northeast-1.amazonaws.com/amazon-ssm-ap-northeast-1/latest/debian_amd64/amazon-ssm-agent.deb -o /tmp/amazon-ssm-agent.deb \
    && dpkg -i /tmp/amazon-ssm-agent.deb \
    && cp /etc/amazon/ssm/seelog.xml.template /etc/amazon/ssm/seelog.xml

RUN gem install bundler 

ENV INSTALL_PATH /app

RUN mkdir $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 3000
