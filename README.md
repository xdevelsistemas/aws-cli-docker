# Chronos worker for docker jobs

Docker container with the AWS CLI + Java8 + Node + casperjs installed.

## Getting your AWS Keys:

[http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html#cli-signup](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-set-up.html#cli-signup)

## Passing your keys into this container via environmental variables:

[http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-environment](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-environment)

## Command line options for things like setting the region

[http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-command-line](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html#cli-command-line)

## You can run any commands available to the AWS CLI

[http://docs.aws.amazon.com/cli/latest/index.html](http://docs.aws.amazon.com/cli/latest/index.html)

## Example Usage:


    docker run \
    --env AWS_ACCESS_KEY_ID=<<YOUR_ACCESS_KEY>> \
    --env AWS_SECRET_ACCESS_KEY=<<YOUR_SECRET_ACCESS>> \
    --env AWS_DEFAULT_REGION=<<YOUR_DEFAULT_REGION>> \
    --env BUCKET_NAME=<<YOUR_BUCKET_NAME>> \
    xdevelsistemas/chronos-worker \
    <<YOUR_INTEGRATION_PATTERN_IN_JAR>> <<YOUR_ARGS>>
