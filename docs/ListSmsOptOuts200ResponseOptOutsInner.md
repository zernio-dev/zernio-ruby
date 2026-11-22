# Zernio::ListSmsOptOuts200ResponseOptOutsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **opted_out_at** | **Time** |  | [optional] |
| **keyword** | **String** | The keyword they sent (e.g. STOP), when the carrier recorded one. | [optional] |
| **from** | **String** | Which of your numbers the recipient opted out from. | [optional] |
| **source** | **String** | &#x60;inbound_stop&#x60; when the recipient texted an opt-out keyword, &#x60;api&#x60; when recorded with &#x60;POST /v1/sms/opt-outs&#x60;. Null when unknown. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSmsOptOuts200ResponseOptOutsInner.new(
  phone_number: null,
  opted_out_at: null,
  keyword: null,
  from: null,
  source: null
)
```

