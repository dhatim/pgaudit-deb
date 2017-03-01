# pgaudit-deb

[![Build Status](https://travis-ci.org/dhatim/pgaudit-deb.svg?branch=master)](https://travis-ci.org/dhatim/pgaudit-deb)

This is a debian package for the [pgaudit](http://pgaudit.org/) extension.

## Installation

This package depends on PostgreSQL 9.6.

- Add Dhatim Bintray's debian repository in sources.list:
  ```bash
  echo "deb http://dl.bintray.com/dhatim/deb stable main" | sudo tee -a /etc/apt/sources.list
  ```

- If it is the first repository from Bintray that you add, you will also need to add Bintray's public key to apt:
  ```bash
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
  ```

- Install the `postgresql-pgaudit-9.6` package:
  ```bash
  sudo apt-get update && sudo apt-get install postgresql-pgaudit-9.6
  ```

- Add `pgaudit` to [`shared_preload_libraries`](https://www.postgresql.org/docs/current/static/runtime-config-client.html#GUC-SHARED-PRELOAD-LIBRARIES) in `postgresql.conf` so the extension is loaded. 

- Restart the PostgreSQL server.

