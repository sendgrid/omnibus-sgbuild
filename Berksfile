source 'http://chef.sjc1.sendgrid.net:26200'


# The apt cookbook is required to bring the apt cache up-to-date on Ubuntu
# systems, since the cache can become stale on older boxes.
cookbook 'apt', '~> 2.0'

cookbook 'omnibus'

# Uncomment to use the latest version of the Omnibus cookbook from GitHub
# cookbook 'omnibus', github: 'opscode-cookbooks/omnibus'

# Run .jenkins script to build package
cookbook 'ci_dependencies', path: 'cookbooks/ci_dependencies'
