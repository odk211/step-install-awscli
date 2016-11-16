# step-install-awscli

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

