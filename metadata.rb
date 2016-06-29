name             'drush'
maintainer       'Mark Sonnabaum'
maintainer_email 'mark.sonnabaum@acquia.com'
license          'Apache 2.0'
description      'Installs drush, the Drupal Shell.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          '0.10.0'
depends          'php', '>= 0.99.0'
depends          'git'
depends          'composer'

recipe           'drush',       'Installs Drush and dependencies.'
recipe           'drush::git',  'Installs Drush via Git (github.com repository)'

%w(debian ubuntu centos redhat).each do |os|
  supports os
end
