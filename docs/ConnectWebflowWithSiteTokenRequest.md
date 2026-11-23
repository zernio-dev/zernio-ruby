# Zernio::ConnectWebflowWithSiteTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Your Zernio profile ID (get from /v1/profiles). |  |
| **site_token** | **String** | Webflow site API token with Sites read and CMS read and write access. |  |
| **reconnect_account_id** | **String** | The Webflow site connection being reconnected. In a workspace with no billing set up, the connect is allowed only when it returns to that same site. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWebflowWithSiteTokenRequest.new(
  profile_id: null,
  site_token: null,
  reconnect_account_id: null
)
```

