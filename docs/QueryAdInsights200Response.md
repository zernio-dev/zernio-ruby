# Zernio::QueryAdInsights200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_id** | **String** | Meta responses only. | [optional] |
| **customer_id** | **String** | Google responses only: the customer the query ran against. | [optional] |
| **field_mask** | **String** | Google responses only: the selected fields echoed by Google. | [optional] |
| **data** | **Array&lt;Object&gt;** |  | [optional] |
| **paging** | [**QueryAdInsights200ResponsePaging**](QueryAdInsights200ResponsePaging.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryAdInsights200Response.new(
  object_id: null,
  customer_id: null,
  field_mask: null,
  data: null,
  paging: null
)
```

