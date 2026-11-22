# Zernio::EditCampaignNegativeKeywordListsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **add** | **Array&lt;String&gt;** | Shared negative keyword list ids to attach. Send at least one entry in add or remove. | [optional] |
| **remove** | **Array&lt;String&gt;** | Shared negative keyword list ids to detach. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditCampaignNegativeKeywordListsRequest.new(
  platform: null,
  add: null,
  remove: null
)
```

