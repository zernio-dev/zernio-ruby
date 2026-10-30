# Zernio::CreatorPortalSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **platform** | **String** |  |  |
| **post_id** | **String** |  |  |
| **url** | **String** |  |  |
| **status** | **String** |  |  |
| **submitted_at** | **Time** |  |  |
| **published_at** | **Time** |  |  |
| **views** | **Integer** | Latest view count read for the post. |  |
| **engagements** | **Integer** | The campaign engagement types summed at the latest read. Null until the post is read. |  |
| **views_from_ads** | **Integer** | Views that came from ads the creator ran, on YouTube and X. Null where the platform does not report them or before the first read. |  |
| **earned_cents** | **Integer** |  |  |
| **reject_reason** | **String** |  |  |
| **flags** | **Array&lt;String&gt;** | Creator-safe flags only. Every other review flag shows as &#x60;under_review&#x60;. |  |
| **tracking_ends_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalSubmission.new(
  id: null,
  platform: null,
  post_id: null,
  url: null,
  status: null,
  submitted_at: null,
  published_at: null,
  views: null,
  engagements: null,
  views_from_ads: null,
  earned_cents: null,
  reject_reason: null,
  flags: null,
  tracking_ends_at: null
)
```

