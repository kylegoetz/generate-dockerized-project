# generate-dockerized-project
for rapidly generating an ExpressJS API and React UI with an nginx reverse proxy

* `mkdir <APP> && cd <APP>`
* `git clone <this repo>`
* `./create.sh`

This generates the UI, API, and reverse proxy docker images and the source code for them in the current directory (`<APP>`).

To run the docker images, run `run.sh` from `<APP>`. Then you can open `http://localhost:8080` in your browser to view the app.
Live reload exists for the UI. Work in progress for API.
