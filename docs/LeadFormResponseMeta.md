# Zernio::LeadFormResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **form_id** | **String** |  | [optional] |
| **lead_id** | **String** |  | [optional] |
| **page_id** | **String** |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LeadFormResponseMeta.new(
  platform: facebook,
  account_id: null,
  form_id: null,
  lead_id: null,
  page_id: null,
  last_updated: null
)
```

