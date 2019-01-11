# Mongo Docker File

### Usage 

Before starting the image, you must run the `mongo-build.sh` script.

Then you can run the `mongo-run.sh` script. It uses the port 27017.

The `mongo-run.sh` tries to create a volume on `{current_path}/.data/mongo` by default.

If you don't want this behavior, use the `--no-volume` flag.