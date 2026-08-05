# Zernio::SendInboxMessageRequestInteractiveActionOneOf8Parameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thumbnail_product_retailer_id** | **String** | Optional product whose image is used as the message thumbnail. Falls back to the first catalog item when omitted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestInteractiveActionOneOf8Parameters.new(
  thumbnail_product_retailer_id: null
)
```

