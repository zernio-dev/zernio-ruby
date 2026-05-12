# Zernio::ListInboxComments200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **content** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **permalink** | **String** |  | [optional] |
| **created_time** | **Time** |  | [optional] |
| **comment_count** | **Integer** |  | [optional] |
| **like_count** | **Integer** |  | [optional] |
| **cid** | **String** | Bluesky content identifier | [optional] |
| **subreddit** | **String** | Reddit subreddit name | [optional] |
| **is_ad** | **Boolean** | True when this row is an ad (boosted/dark post). &#x60;platform&#x60; is then the comment platform (facebook or instagram), &#x60;id&#x60; equals &#x60;adId&#x60;, and the thread is at GET /v1/ads/{adId}/comments. | [optional] |
| **ad_id** | **String** | Internal Zernio ad id — only on ad rows (same value as &#x60;id&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxComments200ResponseDataInner.new(
  id: null,
  platform: null,
  account_id: null,
  account_username: null,
  content: null,
  picture: null,
  permalink: null,
  created_time: null,
  comment_count: null,
  like_count: null,
  cid: null,
  subreddit: null,
  is_ad: null,
  ad_id: null
)
```

