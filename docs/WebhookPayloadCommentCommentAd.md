# Zernio::WebhookPayloadCommentCommentAd

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta ad ID. Instagram: from the webhook. Facebook: only on a dark post matched to a single ad by its copy. | [optional] |
| **title** | **String** | Ad creative title (Instagram only). | [optional] |
| **original_media_id** | **String** | Original media ID that Meta reports for the ad (Instagram only). | [optional] |
| **promotion_status** | **String** | Facebook only. The parent post&#39;s promotion_status as the Graph API returns it, for example \&quot;active\&quot; (organic post currently boosted). Ad dark posts usually report \&quot;inactive\&quot; and sometimes \&quot;ineligible\&quot;, so use isDarkPost, not this value, to tell an ad comment apart.  | [optional] |
| **is_dark_post** | **Boolean** | Facebook only: true when the post is an unpublished ad creative (dark post), false for a boosted organic post. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCommentCommentAd.new(
  id: null,
  title: null,
  original_media_id: null,
  promotion_status: null,
  is_dark_post: null
)
```

