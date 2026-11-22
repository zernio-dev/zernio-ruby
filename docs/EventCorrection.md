# Zernio::EventCorrection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | **String** | &#x60;corrected&#x60;: the platform changed its count. &#x60;not_supported&#x60;: the platform has no API to change a conversion it already counted. &#x60;failed&#x60;: see &#x60;error&#x60;. | [optional] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EventCorrection.new(
  account_id: null,
  destination_id: null,
  platform: null,
  status: null,
  error: null
)
```

