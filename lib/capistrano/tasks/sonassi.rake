after "deploy:published", "sonassi:opcache:reset"

namespace :sonassi do
  namespace :opcache do
    desc "Resets the contents of the php-opcode cache on Sonassi"
    task :reset do
      on release_roles :all do
        within release_path do
          execute :sonassi, "#{fetch(:host)}"

          if fetch(:extra_sonassi_hosts)
            fetch(:extra_sonassi_hosts, []).each do |extra_sonassi_host|
                execute :sonassi, "#{extra_sonassi_host}"
            end
          end
        end
      end
    end
  end
end
