# Zernio::OrderImessageSenderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **kind** | **String** |  |  |
| **region** | **String** | Required for phone senders. Without availableNumberId the number is carrier-assigned in this region and revealed once the sender activates. | [optional] |
| **available_number_id** | **String** | A number from GET /v1/imessage/senders/available-numbers. It is assigned and activated on order instead of waiting for provisioning. Phone senders only. | [optional] |
| **zip_code** | **String** | US phone senders only. Preferred area for a carrier-assigned number (ignored with availableNumberId). | [optional] |
| **email_name** | **String** | Local part for email senders (required for kind: email) | [optional] |
| **email_domain** | **String** | Domain for email senders (required for kind: email) | [optional] |
| **display_name** | **String** |  | [optional] |
| **purchase_intent_id** | **String** | Idempotency key for safe retries | [optional] |
| **contact** | [**OrderImessageSenderRequestContact**](OrderImessageSenderRequestContact.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OrderImessageSenderRequest.new(
  profile_id: null,
  kind: null,
  region: null,
  available_number_id: null,
  zip_code: null,
  email_name: null,
  email_domain: null,
  display_name: null,
  purchase_intent_id: null,
  contact: null
)
```

