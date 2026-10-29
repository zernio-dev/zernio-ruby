# Zernio::UpdateOAuthAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  | [optional] |
| **client_secret** | **String** |  | [optional] |
| **slack_signing_secret** | **String** | Slack only: saves or replaces the signing secret from the app&#39;s Basic Information page; any other platform is a 400. | [optional] |
| **scope_areas** | **Array&lt;String&gt;** | Replaces the areas new connects request. Accounts already connected keep what they were granted until they reconnect. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateOAuthAppRequest.new(
  label: null,
  client_secret: null,
  slack_signing_secret: null,
  scope_areas: null
)
```

