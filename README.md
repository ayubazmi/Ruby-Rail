# Todo App

Building a Todo App using Ruby on Rails 7, Hotwire and Stimulus.
<table>
  <tr>
    <td>Ruby</td>
    <td>3.1.2</td>
  </tr>
  <tr>
    <td>Rails</td>
    <td>7.0.2.3</td>
  </tr>
  <tr>
    <td>Node</td>
    <td>16.14.2</td>
  </tr>
  <tr>
    <td>NPM</td>
    <td>8.5.0</td>
  </tr>
  <tr>
    <td>Yarn</td>
    <td>1.22.18</td>
  </tr>
  <tr>
    <td>Database</td>
    <td>PostgreSQL</td>
  </tr>
</table>

## Setup

```bash
  # clone the project
  git clone git@github.com:karinevieira/todo-app.git

  # enter the cloned directory
  cd todo-app

  # install Node dependencies
  yarn install

  # create the development and test databases
  rails db:create

  # migrate tables to database
  rails db:migrate

  # run the project
  bin/dev
```
Open the browser at the address http://localhost:3000

## Running Tests

To run tests, run the following command

```bash
  bundle exec rspec
```
