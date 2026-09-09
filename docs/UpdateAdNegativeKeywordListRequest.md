# Zernio::UpdateAdNegativeKeywordListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id. |  |
| **customer_id** | **String** | Connected Google Ads customer id, without dashes. Required when the connection has multiple customers. | [optional] |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **name** | **String** | Nonempty list name, trimmed before use. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdNegativeKeywordListRequest.new(
  account_id: null,
  customer_id: null,
  platform: null,
  name: null
)
```

