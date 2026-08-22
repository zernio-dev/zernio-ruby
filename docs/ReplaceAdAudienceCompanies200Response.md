# Zernio::ReplaceAdAudienceCompanies200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **num_received** | **Integer** | Rows sent to LinkedIn. Matching happens asynchronously, so this is not the matched company count. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceAdAudienceCompanies200Response.new(
  message: null,
  num_received: null
)
```

