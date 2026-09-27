# Zernio::UpdateAdConversionGoalsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **goals** | [**Array&lt;GoogleBiddableGoalInput&gt;**](GoogleBiddableGoalInput.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdConversionGoalsRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  goals: null
)
```

