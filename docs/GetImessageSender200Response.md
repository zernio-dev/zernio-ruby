# Zernio::GetImessageSender200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **sender** | [**ImessageSenderLifecycle**](ImessageSenderLifecycle.md) |  | [optional] |
| **health** | [**GetImessageSender200ResponseHealth**](GetImessageSender200ResponseHealth.md) |  | [optional] |
| **imessage_link** | **String** | Provider-hosted opt-in page for this sender (opens Messages on any Apple device); null until the sender is active or when the provider cannot report it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetImessageSender200Response.new(
  success: null,
  sender: null,
  health: null,
  imessage_link: null
)
```

