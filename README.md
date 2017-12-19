# docker-ssh-tunnel

This Docker image provides a simple way to establish (and maintain) ssh tunnels. It uses [autossh](http://www.harding.motd.ca/autossh/) to manage the SSH connection.

## Usage

```sh
docker run --rm -it -p 3000:3000 -v /path/to/id_rsa:/ssh_identity jeroenj/ssh-tunnel 0.0.0.0:3000:localhost:3000 user@example.com
```

This will establish an SSH connection to `example.com` as the `user` user. The port `3000` on `localhost` (on `example.com`) will be tunneled to port `3000`. Port `3000` is then mapped to port `3000` on the Docker host.

An SSH key can be used in order for authentication which can be mounted as a volume at `/ssh_identity`. Make sure it's mode is set to `0600`.
