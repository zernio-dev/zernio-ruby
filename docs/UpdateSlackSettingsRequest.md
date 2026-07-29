# Zernio::UpdateSlackSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_username** | **String** | Author name shown on posts. Empty string clears it. | [optional] |
| **default_icon_url** | **String** | Author avatar image URL. Empty string clears it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateSlackSettingsRequest.new(
  default_username: null,
  default_icon_url: null
)
```

