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

## Configuration

This uses the `:hosts` variable to clear cache, but you can add additional hosts to clear for a multisite setup into `:extra_sonassi_hosts`:

```
set :extra_sonassi_hosts, ['hostname1', 'hostname2']
```

You may also need to update `config/deploy.rb` with the following on servers:

    set :default_env, { path: '/opt/php/php-7.2/bin/:/microcloud/domains/cordm2/domains/.composer:$PATH' }