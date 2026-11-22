# Zernio::RequestCampaignDraftRevisionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note** | **String** | What to change overall. Stored as &#x60;reviewNote&#x60;. | [optional] |
| **comments** | [**Array&lt;RequestCampaignDraftRevisionRequestCommentsInner&gt;**](RequestCampaignDraftRevisionRequestCommentsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RequestCampaignDraftRevisionRequest.new(
  note: null,
  comments: null
)
```

