# Zernio::CreateAdNegativeKeywordListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **name** | **String** | Nonempty list name, trimmed before use. |  |
| **keywords** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Full desired keyword set. Bare strings use broad match. Send [] to clear the list. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdNegativeKeywordListRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  platform: null,
  name: null,
  keywords: null
)
```

