# Zernio::GetInstagramPublishingLimit200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quota_usage** | **Integer** | Containers published so far in the current window | [optional] |
| **quota_total** | **Integer** | Maximum containers publishable per window | [optional] |
| **quota_duration_seconds** | **Integer** | Length of the rolling window in seconds | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInstagramPublishingLimit200Response.new(
  quota_usage: null,
  quota_total: null,
  quota_duration_seconds: null
)
```

