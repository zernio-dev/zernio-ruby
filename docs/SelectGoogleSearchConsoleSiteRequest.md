# Zernio::SelectGoogleSearchConsoleSiteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending_data_token** | **String** | Token from the headless redirect. |  |
| **site_url** | **String** | A siteUrl from the sites list. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectGoogleSearchConsoleSiteRequest.new(
  pending_data_token: null,
  site_url: sc-domain:acme.com
)
```

