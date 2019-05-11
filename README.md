# Chicago DSA Pipeline

![CDSA CI/CD Logo](https://raw.githubusercontent.com/ChicagoDSA/Concourse-CI-CD/master/cdsa-cicd-logo.png)

http://45.55.40.82:8080/

A Concourse CI/CD config for technical CDSA projects.

Current projects in pipeline:
- Educators For Bernie
- New Member Handbook

# Common Commands

#### Start up local Concourse instance within docker
`
docker-compose up -d
`

#### Stop local Concourse instance within docker
`
docker-compose down
`

#### Connect fly CLI to local instance by logging in
`
fly login -t main -c http://45.55.40.82:8080/
`

#### Apply updated local changes
`
fly set-pipeline -t main -c pipeline.yml -l ~/secrets/secrets.yml -p EdForBernie 
`

#### Connect fly CLI to Dev Instance
`
fly -t main login -c http://45.55.40.82:8080/ 
`






