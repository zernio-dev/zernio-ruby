# Zernio::GetInboxSourceBreakdown200ResponseSourcesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** |  | [optional] |
| **received** | **Integer** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **read** | **Integer** |  | [optional] |
| **by_platform** | [**Array&lt;GetInboxSourceBreakdown200ResponseSourcesInnerByPlatformInner&gt;**](GetInboxSourceBreakdown200ResponseSourcesInnerByPlatformInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxSourceBreakdown200ResponseSourcesInner.new(
  source: null,
  received: null,
  sent: null,
  read: null,
  by_platform: null
)
```

