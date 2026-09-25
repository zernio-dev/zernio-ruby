# Zernio::ErrorResponseDetailsUnconfirmedWrite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **parent_id** | **String** | Where to look for it: the ad set for an ad, the campaign for an ad set, the ad account otherwise. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ErrorResponseDetailsUnconfirmedWrite.new(
  type: null,
  parent_id: null
)
```

