# Zernio::SendCommerceDraftOrderInvoiceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **to** | **String** | Defaults to the draft&#39;s email. | [optional] |
| **subject** | **String** |  | [optional] |
| **custom_message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendCommerceDraftOrderInvoiceRequest.new(
  account_id: null,
  to: null,
  subject: null,
  custom_message: null
)
```

