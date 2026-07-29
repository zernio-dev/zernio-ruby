# Zernio::ListLeadForms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **forms** | **Array&lt;Object&gt;** |  | [optional] |
| **pagination** | [**SearchTweets200ResponsePagination**](SearchTweets200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLeadForms200Response.new(
  status: success,
  forms: null,
  pagination: null
)
```

