# Zernio::ListSmsOptOuts200ResponseOptOutsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **opted_out_at** | **Time** |  | [optional] |
| **keyword** | **String** | The keyword they sent (e.g. STOP), when the carrier recorded one. | [optional] |
| **from** | **String** | Which of your numbers the recipient opted out from. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSmsOptOuts200ResponseOptOutsInner.new(
  phone_number: null,
  opted_out_at: null,
  keyword: null,
  from: null
)
```

