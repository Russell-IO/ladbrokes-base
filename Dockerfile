FROM atlassian/default-image:latest
RUN set -x && \
  npm install -g cfn-lint && \
  apt-get -y install python-pip ruby-dev unzip && \
  pip install -U awscli && pip install boto3 && \
  gem install main --no-rdoc --no-ri && \
  gem install aws-sdk --no-rdoc --no-ri && \
  wget https://releases.hashicorp.com/terraform/0.10.4/terraform_0.10.4_linux_amd64.zip && \
  unzip -o terraform_0.10.4_linux_amd64.zip -d /bin

