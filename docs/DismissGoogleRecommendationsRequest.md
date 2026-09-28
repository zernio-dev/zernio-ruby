# Zernio::DismissGoogleRecommendationsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Google customer id, digits only. Required when the connection has several customers. | [optional] |
| **resource_names** | **Array&lt;String&gt;** | Recommendation resource names from the list, or their ids. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DismissGoogleRecommendationsRequest.new(
  account_id: null,
  ad_account_id: null,
  resource_names: null
)
```

