# MySQL Docker File

### Usage 

Before starting the image, you must run the `mysql-build.sh` script.

Then you can run the `mysql-run.sh` script. It uses the port 3306.

The `mysql-run.sh` tries to create a volume on `{current_path}/.data/mysql` by default.

If you don't want this behavior, use the `--no-volume` flag.