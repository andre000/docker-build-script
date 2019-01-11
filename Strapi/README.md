# Strapi DockerFile

### Usage

Before starting the image, you must run the `strapi-build.sh` script.

Then you must have running the MongoDB container of this same repository.

Then you can run the `strapi-run.sh` script. It uses the port 1337.

The `strapi-run.sh` tries to create a volume on `{current_path}/.data/strapi` by default.

If you don't want this behavior, use the `--no-volume` flag.
