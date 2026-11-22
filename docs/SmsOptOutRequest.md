# Zernio::SmsOptOutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the SMS number account the opt-out applies to (from &#x60;GET /v1/accounts&#x60;). |  |
| **phone** | **String** | Recipient phone number in E.164 format, e.g. +13105559999. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SmsOptOutRequest.new(
  account_id: null,
  phone: null
)
```

