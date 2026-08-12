# Zernio::ListLocalServicesLeadConversations200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **channel** | **String** | PHONE_CALL / MESSAGE / SMS / EMAIL / WHATSAPP / ADS_API. | [optional] |
| **participant_type** | **String** | ADVERTISER or CONSUMER. | [optional] |
| **event_date_time** | **String** |  | [optional] |
| **phone_call** | [**ListLocalServicesLeadConversations200ResponseDataInnerPhoneCall**](ListLocalServicesLeadConversations200ResponseDataInnerPhoneCall.md) |  | [optional] |
| **message** | [**ListLocalServicesLeadConversations200ResponseDataInnerMessage**](ListLocalServicesLeadConversations200ResponseDataInnerMessage.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLocalServicesLeadConversations200ResponseDataInner.new(
  id: null,
  channel: null,
  participant_type: null,
  event_date_time: null,
  phone_call: null,
  message: null
)
```

