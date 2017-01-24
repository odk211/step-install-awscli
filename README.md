# step-install-awscli

[![wercker status](https://app.wercker.com/status/e0724f035c1933c08ab277ad1c915bb2/m/master "wercker status")](https://app.wercker.com/project/bykey/e0724f035c1933c08ab277ad1c915bb2)

Like [wercker-step-install-aws-cli](https://github.com/EdgecaseInc/wercker-step-install-aws-cli) but this step does not use `apt-get` and `wget`.

This step do

- install `pip` with [get-pip.py](https://pip.pypa.io/en/stable/installing/#installing-with-get-pip-py) script if not installed.
- `pip install awscli`

# Options:

- `key` (optional) AWS Access Key ID
- `secret` (optional) AWS Secret Access Key
- `region` (optional) Default region name
- `output` (optional) Default output format

# Example

```
deploy:
  steps:
    - odk211/install-awscli:
        key: ${AWS_ACCESS_KEY_ID}
        secret: ${AWS_SECRET_ACCESS_KEY}
        region: ${AWS_REGION}
```

