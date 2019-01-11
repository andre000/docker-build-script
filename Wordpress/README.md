# Wordpress DockerFile

### Usage

Before starting the image, you must run the `wordpress-build.sh` script.

Then you must have running the MySQL container of this same repository.

Then you can run the `wordpress-run.sh` script. It uses the port 8080.

The `wordpress-run.sh` tries to create a volume on `{current_path}/.data/wordpress` by default.

If you don't want this behavior, use the `--no-volume` flag.
