# Zernio::GetInboxPostComments200ResponseMetaAdComments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Internal Zernio ad ID | [optional] |
| **ad_comments_url** | **String** | Path to fetch the ad&#39;s comments (GET /v1/ads/{adId}/comments) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200ResponseMetaAdComments.new(
  ad_id: null,
  ad_comments_url: null
)
```

