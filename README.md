# [Database server tech test](https://github.com/makersacademy/course/blob/master/individual_challenges/database_server.md)

Click the title for a summary of this challenge.

Requirements:
* Postgresql
* Ruby (designed on v 2.3.1)

Setting up and running
=

0. Clone this repo
1. to install dependencies, run ```bundle install```
2. to create a database, run ```psql``` then ```CREATE DATABASE hash_data_developmnet;```
3. from the root of the repo run ```ruby app/app.rb```
4. open a browser and visit ```http://localhost:4000/set?[your_key_here]=[your_value_here]```
5. see you value displayed at ```http://localhost:4000/set?key=[your_key]```
6. return to that address at any time to view your value.

Testing
=

0. follow steps 0 and 1 above
1. to create a database, run ```psql``` then ```CREATE DATABASE hash_data_test;```
2. from the root of the repo run ```rspec```
3. see your test results.