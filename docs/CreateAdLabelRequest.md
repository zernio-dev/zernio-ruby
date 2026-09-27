# Zernio::CreateAdLabelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (Google Ads) |  |
| **ad_account_id** | **String** | Google customer id. Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId | [optional] |
| **name** | **String** | Trimmed before sending. |  |
| **background_color** | **String** | #RRGGBB. Google picks a color when omitted. | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdLabelRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  background_color: null,
  description: null
)
```

