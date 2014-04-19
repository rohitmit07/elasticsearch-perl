use Test::More;

use Search::Elasticsearch::Async;

my $s = Search::Elasticsearch::Async->new()->transport->serializer;

SKIP: {
    skip 'Cpanel::JSON::XS not installed' => 1
        unless eval { require Cpanel::JSON::XS; 1 };

    isa_ok $s, "Search::Elasticsearch::Serializer::JSON::Cpanel", 'Cpanel';
}

done_testing;
