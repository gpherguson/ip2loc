#!/usr/bin/env perl

use LWP::Simple;
use XML::Simple;

my $body = get('http://www.infosniper.net/xml.php') or die "Can't get URL";
my $xml = XMLin($body);

# <?xml version="1.0" encoding="UTF-8"?>
# <results>
#  <result>
#   <ipaddress>80.137.230.29</ipaddress>
#   <hostname>p5089e61d.dip.t-dialin.net</hostname>
#   <provider>Deutsche Telekom Germany</provider>
#   <country>Germany</country>
#   <countrycode>de</countrycode>
#   <countryflag>http://www.infosniper.net/country_flags/de.gif</countryflag>
#   <state>Nordrhein-Westfalen</state>
#   <city>Aachen</city>
#   <areacode>n/a</areacode>
#   <postalcode>n/a</postalcode>
#   <dmacode>n/a</dmacode>
#   <latitude>50.7708</latitude>
#   <longitude>6.1053</longitude>
#   <queries>37</queries>
#  </result>
# </results>

$xml_result = $xml->{'result'};

my $ipaddress   = $xml_result->{'ipaddress'};
my $hostname    = $xml_result->{'hostname'};
my $provider    = $xml_result->{'provider'};
my $country     = $xml_result->{'country'};
my $countrycode = $xml_result->{'countrycode'};
my $countryflag = $xml_result->{'countryflag'};
my $state       = $xml_result->{'state'};
my $city        = $xml_result->{'city'};
my $areacode    = $xml_result->{'areacode'};
my $postalcode  = $xml_result->{'postalcode'};
my $dmacode     = $xml_result->{'dmacode'};
my $latitude    = $xml_result->{'latitude'};
my $longitude   = $xml_result->{'longitude'};
my $queries     = $xml_result->{'queries'};

print 'ipaddress:   ', $ipaddress   , "\n";
print 'hostname:    ', $hostname    , "\n";
print 'provider:    ', $provider    , "\n";
print 'country:     ', $country     , "\n";
print 'countrycode: ', $countrycode , "\n";
print 'countryflag: ', $countryflag , "\n";
print 'state:       ', $state       , "\n";
print 'city:        ', $city        , "\n";
print 'areacode:    ', $areacode    , "\n";
print 'postalcode:  ', $postalcode  , "\n";
print 'dmacode:     ', $dmacode     , "\n";
print 'latitude:    ', $latitude    , "\n";
print 'longitude:   ', $longitude   , "\n";
print 'queries:     ', $queries     , "\n";

