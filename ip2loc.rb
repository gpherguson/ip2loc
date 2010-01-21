#!/usr/bin/env ruby

require 'open-uri'
require 'rubygems'
require 'nokogiri'

body = open('http://www.infosniper.net/xml.php').read
xml = Nokogiri::XML(body)

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

ipaddress   = xml.at( '//ipaddress/text()'   )
hostname    = xml.at( '//hostname/text()'    )
provider    = xml.at( '//provider/text()'    )
country     = xml.at( '//country/text()'     )
countrycode = xml.at( '//countrycode/text()' )
countryflag = xml.at( '//countryflag/text()' )
state       = xml.at( '//state/text()'       )
city        = xml.at( '//city/text()'        )
areacode    = xml.at( '//areacode/text()'    )
postalcode  = xml.at( '//postalcode/text()'  )
dmacode     = xml.at( '//dmacode/text()'     )
latitude    = xml.at( '//latitude/text()'    )
longitude   = xml.at( '//longitude/text()'   )
queries     = xml.at( '//queries/text()'     )

print 'ipaddress:   ', ipaddress   , "\n"
print 'hostname:    ', hostname    , "\n"
print 'provider:    ', provider    , "\n"
print 'country:     ', country     , "\n"
print 'countrycode: ', countrycode , "\n"
print 'countryflag: ', countryflag , "\n"
print 'state:       ', state       , "\n"
print 'city:        ', city        , "\n"
print 'areacode:    ', areacode    , "\n"
print 'postalcode:  ', postalcode  , "\n"
print 'dmacode:     ', dmacode     , "\n"
print 'latitude:    ', latitude    , "\n"
print 'longitude:   ', longitude   , "\n"
print 'queries:     ', queries     , "\n"

