# Zernio::SelectGoogleAnalyticsPropertyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pending_data_token** | **String** | Token from the headless redirect. |  |
| **property_id** | **String** | A propertyId from the properties list. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectGoogleAnalyticsPropertyRequest.new(
  pending_data_token: null,
  property_id: 312456789
)
```

