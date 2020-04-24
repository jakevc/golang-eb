# Golang elastic beanstalk sample

This repository sets up the golang sample from AWS elastic beanstalk to run on a single instance. The configuration automatically generate TLS certificates using certbot-auto, which automatically sets up nginx to redirect traffic from port 80 -> 443.


# Setup

Make sure to install the AWS eb cli:

```
pip install aws-eb-cli
```

```
git clone " "
cd golang-eb 
eb init
eb create -s
```


