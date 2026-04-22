# Zernio::InstagramPlatformDataTrialParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **graduation_strategy** | **String** | MANUAL (graduate from Instagram app) or SS_PERFORMANCE (auto-graduate if performs well with non-followers) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramPlatformDataTrialParams.new(
  graduation_strategy: null
)
```

