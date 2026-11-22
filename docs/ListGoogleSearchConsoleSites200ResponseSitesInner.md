# Zernio::ListGoogleSearchConsoleSites200ResponseSitesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_url** | **String** | &#x60;sc-domain:&#x60; plus the domain for a Domain property, the full URL prefix otherwise. | [optional] |
| **permission_level** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleSearchConsoleSites200ResponseSitesInner.new(
  site_url: sc-domain:acme.com,
  permission_level: null
)
```

