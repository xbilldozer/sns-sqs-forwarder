# SNS -> SQS Forwarder

For development use only.

Simple implementation of Amazon Simple Notification Service that forwards published messages to elasticmq. Wraps messages in a similar JSON envelope as actual SNS.

See `config.json.sample` for example configuration.

## Build for Testing

```
docker build -t sns_fwd_local -f Dockerfile .
```

```
docker run -p 9911:9911 -v $(pwd)/config.json.sample:/config.json sns_fwd_local
```

Adjust the volume (`-v`) to change your desired config
