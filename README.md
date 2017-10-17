# pgaudit-deb
### For PostgreSQL 9.5
[![Build status](https://travis-ci.org/dhatim/pgaudit-deb.svg?branch=REL_9_5_STABLE)](https://travis-ci.org/dhatim/pgaudit-deb/branches)
 [ ![Download](https://api.bintray.com/packages/dhatim/deb/pgaudit/images/download.svg?version=1.0.6) ](https://bintray.com/dhatim/deb/pgaudit/1.0.6/link)
 ### For PostgreSQL 9.6
[![Build status](https://travis-ci.org/dhatim/pgaudit-deb.svg?branch=REL_9_6_STABLE)](https://travis-ci.org/dhatim/pgaudit-deb/branches)
[ ![Download](https://api.bintray.com/packages/dhatim/deb/pgaudit/images/download.svg?version=1.1.1) ](https://bintray.com/dhatim/deb/pgaudit/1.1.1/link)
### For PostgreSQL 10
[![Build status](https://travis-ci.org/dhatim/pgaudit-deb.svg?branch=REL_10_STABLE)](https://travis-ci.org/dhatim/pgaudit-deb/branches)
[ ![Download](https://api.bintray.com/packages/dhatim/deb/pgaudit/images/download.svg?version=1.2.0) ](https://bintray.com/dhatim/deb/pgaudit/1.2.0/link)

This is a debian package for the [pgaudit](http://pgaudit.org/) extension.

## Installation

- Add Dhatim Bintray's debian repository in sources.list:
  ```bash
  echo "deb http://dl.bintray.com/dhatim/deb stable main" | sudo tee -a /etc/apt/sources.list
  ```

- If it is the first repository from Bintray that you add, you will also need to add Bintray's public key to apt:
  ```bash
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
  ```

- Depending on your PostgreSQL version, install the `postgresql-pgaudit-9.5`, `postgresql-pgaudit-9.6` or `postgresql-pgaudit-10` package. For example, with PostgreSQL 9.6:
  ```bash
  sudo apt-get update && sudo apt-get install postgresql-pgaudit-9.6
  ```

- Add `pgaudit` to [`shared_preload_libraries`](https://www.postgresql.org/docs/current/static/runtime-config-client.html#GUC-SHARED-PRELOAD-LIBRARIES) in `postgresql.conf` so the extension is loaded. 

- Restart the PostgreSQL server.

