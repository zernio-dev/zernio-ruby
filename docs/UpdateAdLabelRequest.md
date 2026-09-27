# Zernio::UpdateAdLabelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **name** | **String** |  | [optional] |
| **background_color** | **String** |  | [optional] |
| **description** | **String** | Send \&quot;\&quot; to clear it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdLabelRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  background_color: null,
  description: null
)
```

