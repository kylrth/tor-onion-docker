# tor-onion-docker

Build the Tor container with Docker:

```sh
docker-compose build
```

Then see the example in [docker-compose.yml](docker-compose.yml).

If you use NGINX like in the example, you'll probably need to increase `server_names_hash_bucket_size` to support the long onion URLs.

See my [blog post](https://kylrth.com/post/tor-onion-service/) for more details.
