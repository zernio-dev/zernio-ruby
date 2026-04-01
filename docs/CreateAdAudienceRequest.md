# Late::CreateAdAudienceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** | Must start with act_ |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **pixel_id** | **String** | Required for website audiences | [optional] |
| **retention_days** | **Integer** | Required for website audiences | [optional] |
| **source_audience_id** | **String** | Required for lookalike audiences | [optional] |
| **country** | **String** | 2-letter code, required for lookalike audiences | [optional] |
| **ratio** | **Float** | Required for lookalike audiences | [optional] |
| **rule** | **Object** | Pixel event rule for website audiences (optional) | [optional] |
| **customer_file_source** | **String** | Data source declaration for GDPR compliance (customer_list only) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateAdAudienceRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  description: null,
  type: null,
  pixel_id: null,
  retention_days: null,
  source_audience_id: null,
  country: null,
  ratio: null,
  rule: null,
  customer_file_source: null
)
```

