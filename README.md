#Teams Workshop API

This project is used as a base for creating workshop ember application.

## Requirements

* **Ruby:** Tested with Ruby `2.2.1`, `1.9.3` should be supported.
* **Database:** this sample application uses `sqlite` but any rails supported database should work out of the box.

## Installation

Clone this repository

```
git clone https://github.com/edderrd/teams-workshop.git
cd teams-workshop
```

Install any dependiencies

```
bundle
```

Initialize the database

```
rake db:migrate
```

Seed database for example data

```
rake db:seed
```

## Endpoints

You should be able to run your application with `rails serve` and see default rails page in your browser http://127.0.0.1:3000 by default following endpoints are configured:

* **Teams**: http://127.0.0.1:3000/teams and single element http://127.0.0.1:3000/teams/1
* **Players**: http://127.0.0.1:3000/players and single element http://127.0.0.1:3000/players/1

***note:*** only teams will show players attribute, but feel free to enable teams in players endpoint.