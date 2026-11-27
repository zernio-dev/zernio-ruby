# Zernio::EditCampaignNegativeKeywordListsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **add** | **Array&lt;String&gt;** | Shared negative keyword list ids to attach. Send at least one entry in add or remove. | [optional] |
| **remove** | **Array&lt;String&gt;** | Shared negative keyword list ids to detach. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditCampaignNegativeKeywordListsRequest.new(
  stage: null,
  platform: null,
  add: null,
  remove: null
)
```

