# Elixir Credo docker image

This image was created to use credo standalone in any CI.
Just mount your code in `/code` and run this container.

```bash
docker run -v $PWD:/code -it paulobezerr/credo
```

## Gitlab CI

You can just add this in you .gitlab-ci.yml repository:

```yml
credo:
  image: paulobezerr/credo
  script:
    - mix credo --strict # or any parameters that you want
```
