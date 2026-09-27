# Zernio::CreateCustomConversionGoalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **name** | **String** |  |  |
| **conversion_action_ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCustomConversionGoalRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  conversion_action_ids: null
)
```

