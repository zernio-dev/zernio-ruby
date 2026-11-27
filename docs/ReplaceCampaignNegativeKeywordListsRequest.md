# Zernio::ReplaceCampaignNegativeKeywordListsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **list_ids** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceCampaignNegativeKeywordListsRequest.new(
  stage: null,
  platform: null,
  list_ids: null
)
```

