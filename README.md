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
