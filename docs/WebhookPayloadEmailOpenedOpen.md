# Zernio::WebhookPayloadEmailOpenedOpen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opened_at** | **Time** |  | [optional] |
| **first_opened_at** | **Time** |  | [optional] |
| **count** | **Integer** | Pixel loads so far, including repeat fetches by the same client. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailOpenedOpen.new(
  opened_at: null,
  first_opened_at: null,
  count: null
)
```

