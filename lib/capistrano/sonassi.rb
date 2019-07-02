SSHKit.config.command_map[:sonassi] = "/usr/bin/env php /microcloud/scripts/classes/Opcache.php --lb lb1 --host "

load File.expand_path('../tasks/sonassi.rake', __FILE__)