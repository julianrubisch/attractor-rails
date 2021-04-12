namespace :attractor do
  desc "Initialize attractor"
  task install: :environment do
    system "attractor init"
  end
end
