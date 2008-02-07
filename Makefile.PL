use inc::Module::Install;
name 'Sledge-Plugin-JSON-XS';
all_from 'lib/Sledge/Plugin/JSON/XS.pm';

requires $_ for (qw/
/);

build_requires 'Test::More';
build_requires 'YAML';
use_test_base;
auto_include;
WriteAll;
