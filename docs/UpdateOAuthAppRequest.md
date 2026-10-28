# Zernio::UpdateOAuthAppRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  | [optional] |
| **client_secret** | **String** |  | [optional] |
| **scope_areas** | **Array&lt;String&gt;** | Replaces the areas new connects request. Accounts already connected keep what they were granted until they reconnect. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateOAuthAppRequest.new(
  label: null,
  client_secret: null,
  scope_areas: null
)
```

