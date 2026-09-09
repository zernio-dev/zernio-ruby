# Zernio::ReplaceCampaignNegativeKeywordListsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **list_ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceCampaignNegativeKeywordListsRequest.new(
  platform: null,
  list_ids: null
)
```

