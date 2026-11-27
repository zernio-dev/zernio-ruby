# Zernio::ApplyGoogleRecommendationsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Google customer id, digits only. Required when the connection has several customers. | [optional] |
| **recommendations** | [**Array&lt;ApplyGoogleRecommendationsRequestRecommendationsInner&gt;**](ApplyGoogleRecommendationsRequestRecommendationsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ApplyGoogleRecommendationsRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  recommendations: null
)
```

