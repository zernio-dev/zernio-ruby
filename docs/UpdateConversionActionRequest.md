# Zernio::UpdateConversionActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **primary_for_goal** | **Boolean** | true &#x3D; primary, false &#x3D; secondary |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateConversionActionRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  primary_for_goal: null
)
```

