# Zernio::GetAdAnalytics200ResponseAd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **trigger** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **currency** | **String** | ISO 4217 code of the ad account that owns this ad (e.g. USD, THB, INR). All money values in &#x60;summary&#x60; and &#x60;daily&#x60; are in this currency. Null only on legacy ads synced before currency was persisted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAnalytics200ResponseAd.new(
  id: null,
  name: null,
  platform: null,
  trigger: null,
  status: null,
  currency: null
)
```

