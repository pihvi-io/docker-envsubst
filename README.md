# Docker container for running envsubst
This container is used with Pihvi local development environment for rendering settings templates

## Example
```bash
# Provide all variables
$ VARS='$TARGET_IP:$TARGET_HOST'
$ TARGET_IP=127.0.0.1
$ TARGET_HOST=localhost

# Create a template
$ echo "${TARGET_IP} ${TARGET_HOST}" > hosts.tmpl

# Provide all used envs in VARS variable and as separate envs
$ docker run --rm -it -e VARS=$VARS -e $TARGET_IP -e $TARGET_HOST pihvio/envsubst "$(cat hosts.tmpl)" > /tmp/etc/hosts
```

## Maintainers
[Onni Hakala](https://github.com/onnimonni)

## License
MIT