# Zernio::CountLeads200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **counts** | [**CountLeads200ResponseCounts**](CountLeads200ResponseCounts.md) |  | [optional] |
| **total** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CountLeads200Response.new(
  status: success,
  counts: null,
  total: null
)
```

