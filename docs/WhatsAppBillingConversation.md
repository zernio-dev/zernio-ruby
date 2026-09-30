# Zernio::WhatsAppBillingConversation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta&#39;s conversation id. |  |
| **expires_at** | **Time** | When the window expires. Meta sends it only on the &#x60;sent&#x60; status. |  |
| **origin_type** | **String** | Meta &#x60;origin.type&#x60;, for example &#x60;marketing&#x60;, &#x60;utility&#x60;, &#x60;service&#x60;, &#x60;referral_conversion&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppBillingConversation.new(
  id: null,
  expires_at: null,
  origin_type: utility
)
```

