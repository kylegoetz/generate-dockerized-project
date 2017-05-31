# generate-dockerized-project
for rapidly generating an ExpressJS API and React UI with an nginx reverse proxy

## To create the Docker images on your local machine if you aren't able to fetch from a Docker registry:

1. `git clone <this repo>`
2. `cd <this repo>`
2. `./build.sh`

## To create a new application

* `mkdir <APP> && cd <APP>`
* `git clone <this repo>` .
* `./create.sh`
* `cp nginx.conf <APP>`

This generates the UI, API, and reverse proxy docker images and the source code for them in the current directory (`<APP>`).

To run the docker images, run `run.sh` from `<APP>`. Then you can open `http://localhost:8080` in your browser to view the app.
Live reload exists for the UI and API.

To initialize repositories for the project (separately), run `./gitify.sh`.

## Ramp Up Another Developer

Only do this once per developer computer (this isn't correct):

1. `mkdir <app-name> && cd <app-name>`
2. `git clone <this-repository> .`
3. `./run.sh`

## To start/stop the containers

You should never `docker rm` the containers or there will be headaches when re-starting everything.
Instead, `docker stop` and `docker start` them manually. Or, as a convenience, in this repo is a script
that will handle this for you:

`./control.sh stop` to stop the containers.

`./control.sh start` to start the containers.
