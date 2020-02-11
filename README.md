# README

## TODO refactor notes

- javascript loading and handling map, continue to create one module for webpacker
  - aby sa neopakovali var icon a loadnutie layeru a podobne.
- zbieranie bodov - zladit vety o zbere bodov, su rozne v real time

## Docker cheatcheat

    docker-compose -f docker-compose.yml build
    docker-compose -f docker-compose.yml up
    docker-compose -f docker-compose.yml up -d
    docker-compose -f docker-compose.yml down
    
    docker-compose -f docker-compose.yml run --rm web rails db:create db:migrate
    
    docker exec kavopic2_web_1 rails db:create db:migrate

## Docker machine

* https://docs.docker.com/v17.09/machine/install-machine/
* https://docs.docker.com/machine/examples/ocean/
* https://coderjourney.com/deploy-docker-digital-ocean/


    docker-machine create --driver digitalocean --digitalocean-access-token xxx --digitalocean-size=s-1vcpu-1gb --digitalocean-region=ams3 kavopic2

# Prepinanie env, docker-compose sa vykonaju na serveri ak je env nastaveny tam

Ak to chcem robit pre server, najprv sa nastavim sem:

    eval $(docker-machine env kavopic2)

Ak chcem env vratit do povodneho stavu (na local)

Tu sa presvedcim ze to smeruje von:

    env | grep DOCKER

Vynulujem, unsetnem env premennu:

    eval "$(docker-machine env -u)"

Uvidim ze je opat prazdne:

    env | grep DOCKER


