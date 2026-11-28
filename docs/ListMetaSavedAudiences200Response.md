# Zernio::ListMetaSavedAudiences200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **data** | [**Array&lt;MetaSavedAudience&gt;**](MetaSavedAudience.md) |  | [optional] |
| **paging** | [**ListMetaSavedAudiences200ResponsePaging**](ListMetaSavedAudiences200ResponsePaging.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListMetaSavedAudiences200Response.new(
  ad_account_id: null,
  data: null,
  paging: null
)
```

