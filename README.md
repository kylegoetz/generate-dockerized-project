# generate-dockerized-project
for rapidly generating an ExpressJS API and React UI with an nginx reverse proxy

* `mkdir <APP> && cd <APP>`
* `git clone <this repo>` .
* `./create.sh`
* `cp nginx.conf <APP>`

This generates the UI, API, and reverse proxy docker images and the source code for them in the current directory (`<APP>`).

To run the docker images, run `run.sh` from `<APP>`. Then you can open `http://localhost:8080` in your browser to view the app.
Live reload exists for the UI and API.

To initialize repositories for the project (separately), run `./gitify.sh`.

=== Ramp Up Another Developer ===
1. `mkdir <app-name> && cd <app-name>`
2. `git clone <this-repository> .`
3. `cd react-ui && npm install && cd ../express-api && npm install && cd ..`
3. `cp ../nginx.conf .`
4. `../run.sh`
