# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# TaskInstabug
* ...
# First 
* must have docker if not have install it from https://www.docker.com/
* run the next line to install the  elasticsearch in you machine
* docker run --rm -d -e "discovery.type=single-node" \
    -e "bootstrap.memory_lock=true" \
    -p 9200:9200 \
    elasticsearch:6.8.1

# bundle install to install gem 
* should cahnge confi for database.yml in config folder to connect with database in your pc
* run rake db:create
* run rails db:migrate

# second 
* can import the link in postman an testing the api cal 

* https://www.getpostman.com/collections/fb82fe5ca8fd26808743

# routes 
   * post http://localhost:3000/v1/applications   to crate new application => return key whic will use need name as parmater
   * get  http://localhost:3000/v1/applications   to get all applications in sysem and number of chat in each one
   * get  http://localhost:3000/v1/applications/{key} to get the application which have the key  and number of chat
   * put  http://localhost:3000/v1/applications/{key} to update  application name which have the key  need name as parmater
   * delete  http://localhost:3000/v1/applications/{key} to delate application and chats in and message
   * post http://localhost:3000/v1/applications/{key}/chats to create new chat and return number for it
   * get  http://localhost:3000/v1/applications/{key}/chats/{number} to get the the chat which have number return messages in
   * post  http://localhost:3000/v1/applications/{key}/chats/{number}/messages to create new message need to message as parmater 
   * get http://localhost:3000/v1/applications/{key}/chats/{number}/search  to search in message in this chat 
   *
