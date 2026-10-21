# Zernio::ConnectWebflowWithSiteTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Your Zernio profile ID (get from /v1/profiles). |  |
| **site_token** | **String** | Webflow site API token with Sites read and CMS read and write access. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWebflowWithSiteTokenRequest.new(
  profile_id: null,
  site_token: null
)
```

