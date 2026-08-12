# Zernio::ListLocalServicesLeads200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Lead id; pass to /v1/ads/local-services/leads/{leadId}/conversations. | [optional] |
| **lead_type** | **String** | PHONE_CALL / MESSAGE / BOOKING. | [optional] |
| **category_id** | **String** |  | [optional] |
| **service_id** | **String** |  | [optional] |
| **contact** | [**ListLocalServicesLeads200ResponseDataInnerContact**](ListLocalServicesLeads200ResponseDataInnerContact.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_time** | **String** | Google datetime in the customer&#39;s timezone (YYYY-MM-DD HH:MM:SS). | [optional] |
| **locale** | **String** |  | [optional] |
| **charged** | **Boolean** |  | [optional] |
| **credit_state** | **String** |  | [optional] |
| **credit_state_last_update** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLocalServicesLeads200ResponseDataInner.new(
  id: null,
  lead_type: null,
  category_id: null,
  service_id: null,
  contact: null,
  status: null,
  created_time: null,
  locale: null,
  charged: null,
  credit_state: null,
  credit_state_last_update: null
)
```

