# Zernio::ListGoogleRecommendations200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  |  |
| **recommendations** | [**Array&lt;GoogleRecommendation&gt;**](GoogleRecommendation.md) |  |  |
| **cached_at** | **Time** |  |  |
| **stale** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleRecommendations200Response.new(
  ad_account_id: null,
  recommendations: null,
  cached_at: null,
  stale: null
)
```

