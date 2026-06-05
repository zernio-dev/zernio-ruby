# Zernio::GetInboxSourceBreakdown200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **sources** | [**Array&lt;GetInboxSourceBreakdown200ResponseSourcesInner&gt;**](GetInboxSourceBreakdown200ResponseSourcesInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxSourceBreakdown200Response.new(
  success: null,
  from: null,
  to: null,
  sources: null
)
```

