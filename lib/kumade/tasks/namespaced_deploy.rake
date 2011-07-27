class Kumade
  namespace :kumade do
    desc "Alias for kumade:deploy:staging"
    task :deploy => "deploy:staging"

    namespace :deploy do
      desc "Deploy to Heroku staging"
      task :staging do
        deployer.deploy_to_staging
      end

      desc "Deploy to Heroku production"
      task :production do
        deployer.deploy_to_production
      end
    end
  end
end
