# Zernio::SendEventsRequestDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the connected account that owns the destination (metaads, googleads, googleanalytics or any other account POST /v1/events sends to). |  |
| **destination_id** | **String** | Platform destination, as listed by GET /v1/ads/conversions/destinations. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEventsRequestDestinationsInner.new(
  account_id: null,
  destination_id: null
)
```

