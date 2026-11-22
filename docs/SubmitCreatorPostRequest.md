# Zernio::SubmitCreatorPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The public link to the post. |  |
| **draft_id** | **String** | The approved draft this post publishes. Required when the campaign has &#x60;requireDraftApproval&#x60;: it must be one of the creator&#39;s own drafts, &#x60;approved&#x60;, and not used by another post yet (each draft backs one post only). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SubmitCreatorPostRequest.new(
  url: null,
  draft_id: null
)
```

