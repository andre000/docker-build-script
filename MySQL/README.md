# MySQL Docker File

### Usage 

Run the `mysql-build.sh` script first and then `mysql-run.sh`.

The `mysql-run.sh` tries to create a volume on `/data/mysql` by default. 
If you don't want this behavior, use the `--no-volume` flag.