# Zernio::CreateCustomConversionGoalRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **name** | **String** |  |  |
| **conversion_action_ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCustomConversionGoalRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  conversion_action_ids: null
)
```

