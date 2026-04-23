# Zernio::ReviewWebhookReviewReviewer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform reviewer ID. Null when the platform does not expose it (common on Google Business anonymous reviews). |  |
| **name** | **String** |  |  |
| **profile_image** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReviewWebhookReviewReviewer.new(
  id: null,
  name: null,
  profile_image: null
)
```

