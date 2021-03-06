name              'postgresql'
maintainer        'Danny Guinther'
maintainer_email  'dannyguinther@gmail.com'
license           'MIT'
description       'Postgresql installation, cluster management, and configuration management, for Debian-based systems.'
long_description  'Postgresql installation, cluster management, and configuration management, for Debian-based systems.'
version           '2.0.0'

recipe 'postgresql', 'Noop'
recipe 'postgresql::client', 'Installs psql client using the appropriate installation method for the platform.'
recipe 'postgresql::extension_uuid_ossp', 'Installs the uuid_ossp extension for postgresql server. Requires lib.'
recipe 'postgresql::package_client', 'Adds the PGDG repository and installs client packages.'
recipe 'postgresql::package_server', 'Adds the PGDG repository and installs psql client, postgresql server, and contrib packages.'
recipe 'postgresql::pgdg_repository', 'Adds the PostgreSQL Global Development Group apt repository.'
recipe 'postgresql::server', 'Installs postgresql server using the appropriate installation method for the platform and initializes the main cluster.'
recipe 'postgresql::source_client', 'Compiles psql client from source and creates symlinks to compiled binaries.'
recipe 'postgresql::source_server', 'Not implemented at this time.'

depends 'apt'
depends 'lib'

supports 'debian'
supports 'ubuntu'
