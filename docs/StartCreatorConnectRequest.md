# Zernio::StartCreatorConnectRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | One of the campaign&#39;s platforms, for example tiktok. |  |
| **window_url** | **String** | The Zernio connect window the participant page opened (&#x60;/connect/complete&#x60; with its &#x60;window&#x60; id). Any other URL answers 400 &#x60;invalid_field_value&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartCreatorConnectRequest.new(
  platform: null,
  window_url: null
)
```

