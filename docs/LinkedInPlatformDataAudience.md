# Zernio::LinkedInPlatformDataAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 codes with a built-in LinkedIn geo URN (same list as geoRestriction.countries, merged with it). Other countries and sub-country regions go in geoLocations. | [optional] |
| **geo_locations** | **Array&lt;String&gt;** | LinkedIn geo URNs or ids (urn:li:geo:103644278 or 103644278): countries, states, regions, cities. | [optional] |
| **interface_locales** | [**Array&lt;LinkedInPlatformDataAudienceInterfaceLocalesInner&gt;**](LinkedInPlatformDataAudienceInterfaceLocalesInner.md) | Members&#39; LinkedIn interface locale, e.g. { language: es, country: ES }. | [optional] |
| **industries** | **Array&lt;String&gt;** | urn:li:industry:&lt;id&gt; or id. | [optional] |
| **job_functions** | **Array&lt;String&gt;** | urn:li:function:&lt;id&gt; or id. | [optional] |
| **seniorities** | **Array&lt;String&gt;** | urn:li:seniority:&lt;id&gt; or id. | [optional] |
| **staff_count_ranges** | **Array&lt;String&gt;** | Company size of the member&#39;s current employer. | [optional] |
| **degrees** | **Array&lt;String&gt;** | urn:li:degree:&lt;id&gt; or id (LinkedIn standardized degrees). | [optional] |
| **fields_of_study** | **Array&lt;String&gt;** | urn:li:fieldOfStudy:&lt;id&gt; or id (LinkedIn standardized fields of study). | [optional] |
| **organizations** | **Array&lt;String&gt;** | Schools, as urn:li:organization:&lt;id&gt; or id (LinkedIn&#39;s Organization Lookup). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInPlatformDataAudience.new(
  countries: null,
  geo_locations: null,
  interface_locales: null,
  industries: null,
  job_functions: null,
  seniorities: null,
  staff_count_ranges: null,
  degrees: null,
  fields_of_study: null,
  organizations: null
)
```

