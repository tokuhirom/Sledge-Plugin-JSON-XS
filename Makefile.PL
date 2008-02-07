use inc::Module::Install;
name 'Sledge-Plugin-JSON-XS';
all_from 'lib/Sledge/Plugin/JSON/XS.pm';

requires 'JSON::XS' => 2.01;

build_requires 'Test::More';
build_requires 'Class::Accessor';
build_requires 'YAML';
use_test_base;
auto_include;
WriteAll;
