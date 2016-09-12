rm *.gem
gem build octocore-mysql.gemspec && gem uninstall octocore-mysql --force
find . -name '*.gem' | xargs gem install
