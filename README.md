# step-install-awscli

[![wercker status](https://app.wercker.com/status/e0724f035c1933c08ab277ad1c915bb2/m/master "wercker status")](https://app.wercker.com/project/bykey/e0724f035c1933c08ab277ad1c915bb2)

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

