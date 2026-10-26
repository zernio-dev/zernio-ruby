# Zernio::ListGoogleAnalyticsProperties200ResponsePropertiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **String** | Numeric GA4 property ID. | [optional] |
| **display_name** | **String** |  | [optional] |
| **account_id** | **String** | Google Analytics account ID. | [optional] |
| **account_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleAnalyticsProperties200ResponsePropertiesInner.new(
  property_id: 312456789,
  display_name: acme.com,
  account_id: null,
  account_name: Acme Inc
)
```

