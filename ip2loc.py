#!/usr/bin/env python

import httplib2
import lxml.etree

http = httplib2.Http()
req, body = http.request('http://www.infosniper.net/xml.php', 'GET')
xml = lxml.etree.fromstring(body)

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

ipaddress   = xml.xpath( '//ipaddress/text()'   )[0]
hostname    = xml.xpath( '//hostname/text()'    )[0]
provider    = xml.xpath( '//provider/text()'    )[0]
country     = xml.xpath( '//country/text()'     )[0]
countrycode = xml.xpath( '//countrycode/text()' )[0]
countryflag = xml.xpath( '//countryflag/text()' )[0]
state       = xml.xpath( '//state/text()'       )[0]
city        = xml.xpath( '//city/text()'        )[0]
areacode    = xml.xpath( '//areacode/text()'    )[0]
postalcode  = xml.xpath( '//postalcode/text()'  )[0]
dmacode     = xml.xpath( '//dmacode/text()'     )[0]
latitude    = xml.xpath( '//latitude/text()'    )[0]
longitude   = xml.xpath( '//longitude/text()'   )[0]
queries     = xml.xpath( '//queries/text()'     )[0]

print 'ipaddress:  ', ipaddress   
print 'hostname:   ', hostname    
print 'provider:   ', provider    
print 'country:    ', country     
print 'countrycode:', countrycode 
print 'countryflag:', countryflag 
print 'state:      ', state       
print 'city:       ', city        
print 'areacode:   ', areacode    
print 'postalcode: ', postalcode  
print 'dmacode:    ', dmacode     
print 'latitude:   ', latitude    
print 'longitude:  ', longitude   
print 'queries:    ', queries     
