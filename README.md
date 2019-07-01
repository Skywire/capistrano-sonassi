# Sonassi

- Gem for capistrano to run sonassi specific tasks

## Add to your project:

Add the following to your project Gemfile

~~~
gem 'capistrano-sonassi', :git => 'git@github.com:Skywire/capistrano-sonassi.git', :branch => 'master'
~~~

Then run 

~~~
bundle install
~~~

Add the following to your project Capfile

~~~
require "capistrano/sonassi"
~~~