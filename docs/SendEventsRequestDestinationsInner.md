# Zernio::SendEventsRequestDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected ads account ID (metaads, googleads, linkedinads, tiktokads, openaiads, pinterestads or redditads). |  |
| **destination_id** | **String** | Platform destination, as listed by GET /v1/accounts/{accountId}/conversion-destinations. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEventsRequestDestinationsInner.new(
  account_id: null,
  destination_id: null
)
```

