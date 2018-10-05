# Spring Boot Microservices - Pipeline

## Jenkins Job Configuration

1. On the main Jenkins dashboard page, click "New Item".
2. Enter "sbms-pipeline" in the "name" field, select "Pipeline", and click "OK".
3. Scroll down to the "Pipeline" section and in "Definition" select "Pipeline script from SCM".
4. In "SCM", select "Git".
5. In "Repository URL", enter "https://github.com/jeromy-vandusen-obs/sbms-pipeline.git".
6. Deselect "Lightweight checkout" and click "Save".

## Starting an Environment Using Docker Compose

The `docker-compose.yml` file in this project can be used to start up an environment running all components of the
application. A common use case for doing this would be to create a local version of the test environment to run the
automated tests against. To spin up a complete environment on your local workstation for development or testing, use
these steps.

```bash
# Docker needs to be running in swarm mode. There do not need to be any other nodes in the swarm.
$ docker swarm init
# Modify these configuration settings as you see fit. These are the settings used for a test environment.
$ export IMAGE_TAG="test"
$ export ADMIN_PORT="29999"
$ export WEB_PORT="28080"
$ export GREETING_PORT="28100"
$ export DISCOVERY_PORT="28761"
$ export MONGODB_DATA_PATH="/opt/sbms/test/mongodb"
$ export MONGODB_PORT="27001"
$ export NETWORK_NAME="sbms-test-net"
# Now launch the stack. Give it a different stack name if you prefer.
$ docker stack deploy --compose-file docker-compose.yml sbms-test-app
# If you want to run the automated tests, you'll also need to set these configuration values. Note that if you've
# modified the above settings, that may impact these ones, so adjust accordingly.
$ export URI_BASE = "http://test:28080"
$ export MONGODB_HOST = "test"
# Now you can run the tests.
$ chmod +x mvnw
$ ./mvnw clean verify
```

## To Do

* Tag the Git repositories at various stages in the pipeline.
