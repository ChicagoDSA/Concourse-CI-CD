# Chicago DSA Pipeline

![CDSA CI/CD Logo](https://raw.githubusercontent.com/ChicagoDSA/Concourse-CI-CD/master/cdsa-cicd-logo.png)

A Concourse CI/CD config for technical CDSA projects.

Current projects in pipeline:
- Educators For Bernie
- New Member Handbook

# Common Commands

#### Start up local Concourse instance within docker
`
docker-compose up -d
`

#### Stop local Concourse instane within docker
`
docker-compose down -d
`

#### Connect fly CLI to local instance by logging in
`
fly login -t main -u admin -p admin
`

#### Apply updated local changes
`
fly set-pipeline -t main -c pipeline.yml -l ~/secrets/secrets.yml -p EdForBernie 
`

#### Connect fly CLI to Dev Instance
`
fly -t main login -c http://45.55.40.82:8080/ 
`






