# Zernio::ApplyGoogleRecommendationsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Google customer id, digits only. Required when the connection has several customers. | [optional] |
| **recommendations** | [**Array&lt;ApplyGoogleRecommendationsRequestRecommendationsInner&gt;**](ApplyGoogleRecommendationsRequestRecommendationsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ApplyGoogleRecommendationsRequest.new(
  account_id: null,
  ad_account_id: null,
  recommendations: null
)
```

