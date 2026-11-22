# Zernio::ListAdAudiences200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **audiences** | [**Array&lt;ListAdAudiences200ResponseAudiencesInner&gt;**](ListAdAudiences200ResponseAudiencesInner.md) |  | [optional] |
| **truncated** | **Boolean** | Meta only. True when the ad account has more than 1,000 custom audiences and the list stops at the first 1,000. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdAudiences200Response.new(
  audiences: null,
  truncated: null
)
```

