
# FreeDoc

Réseau social pour les dernier potins avec Rails. Projet validant du 08/02/2024
- gérer la base de données et les migrations
- gérer les relations entre les tables et les modèles
- faire un seed

## Installation

CLone repository or launch in codespace.

Install dépendencies
```bash
  $ bundle install
```
Install Database : create tables and seed
```bash
  $ rails db:migrate
  $ rails db:seed
```
To launch Rails console
```bash
  $ rails c
```
Print tables in Rails console
```bash
  > tp City.all
  > tp Speciality.all
  > tp Patient.all
  > tp Doctor.all
  > tp Appointement.all
```

