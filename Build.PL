use strict;
use warnings FATAL => 'all';
use Module::Build;

my $build = Module::Build->new(
    license              => 'perl',
    recursive_test_files => 1,
    dynamic_config       => 0,
    build_requires       => { 'Test::More' => '0.98' },
    test_requires        => { 'Class::Accessor' => '0' },
    configure_requires   => { 'Module::Build' => '0.38' },
    requires             => {
        'perl'               => '5.00800',
        'Filter::Util::Call' => '0',
        'JSON::XS'           => '2.01'
    },
    no_index    => { 'directory' => [ 'inc', 't' ] },
    name        => 'Sledge-Plugin-JSON-XS',
    module_name => 'Sledge::Plugin::JSON::XS',

    test_files => ( -d '.git' || $ENV{RELEASE_TESTING} ) ? 't/ xt/' : 't/',

    create_readme  => 1,
    create_license => 1,
    meta_merge => {
        resources => {
            repository => 'https://github.com/tokuhirom/Sledge-Plugin-JSON-XS'
        }
    },
);
$build->create_build_script();
