# Zernio::RegisterImessageSenderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile to attach the sender to |  |
| **sender** | **String** | The provider-provisioned sender handle: a phone number in international format (e.g. +18305551234) or an email address |  |
| **display_name** | **String** |  | [optional] |
| **provider** | **String** | Delivery provider. Defaults to the platform default. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RegisterImessageSenderRequest.new(
  profile_id: null,
  sender: null,
  display_name: null,
  provider: null
)
```

