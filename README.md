# README

## Run after next deployment, once:

    bundle exec rails db:gis:setup

## TODO refactor notes

- javascript loading and handling map, continue to create one module for webpacker
  - aby sa neopakovali var icon a loadnutie layeru a podobne.
- zbieranie bodov - zladit vety o zbere bodov, su rozne v real time
- ocistit nepouzivany gem activerecord-postgis-adapter? Ale asi sa pouzivat potom bude
