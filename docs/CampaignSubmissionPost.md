# Zernio::CampaignSubmissionPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thumbnail_url** | **String** |  |  |
| **caption** | **String** |  |  |
| **account_handle** | **String** | The @handle of the connected account that published the post, without the @. |  |
| **published_at** | **Time** | When the post went live; the submission time if that is not known. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignSubmissionPost.new(
  thumbnail_url: null,
  caption: null,
  account_handle: null,
  published_at: null
)
```

