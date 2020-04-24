# Golang elastic beanstalk sample

This repository sets up the golang sample from AWS elastic beanstalk to run on a single instance. The configuration automatically generate TLS certificates using certbot-auto, which automatically sets up nginx to redirect traffic from port 80 -> 443.


# Setup

You need:

    - an AWS account
    - the AWS EB CLI

Install the AWS EB CLI:

```
pip install awsebcli --upgrade --user
```

Clone this repository:

```
git clone https://github.com/jakevc/golang-eb.git 
cd golang-eb 
eb init
```

Set the following variables in the file `.ebextensions/https-single-instance.cong`:

The ENV_NAME and region are used to construct the CERT_DOMAIN for certbot-auto, if they are incorrect, certbot-auto will fail to correctly create TLS certificates on your instance.

```
# set these variables for certobot
ENV_NAME=
REGION=

# fill out your email
CERT_EMAIL=
``` 

