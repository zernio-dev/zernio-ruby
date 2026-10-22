# Zernio::ListFormLeads200ResponseLeadsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta leadgenId. | [optional] |
| **lead_id** | **String** | Zernio lead id, for PATCH /v1/ads/leads/{id}. Only on persisted leads. | [optional] |
| **status** | **String** | Lead status (see PATCH /v1/ads/leads/{id}). Only on persisted leads. | [optional] |
| **created_time** | **String** |  | [optional] |
| **ad_id** | **String** |  | [optional] |
| **form_id** | **String** |  | [optional] |
| **fields** | **Hash&lt;String, String&gt;** |  | [optional] |
| **field_data** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListFormLeads200ResponseLeadsInner.new(
  id: null,
  lead_id: null,
  status: null,
  created_time: null,
  ad_id: null,
  form_id: null,
  fields: null,
  field_data: null
)
```

