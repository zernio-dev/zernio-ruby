# Zernio::ListInboxComments200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **content** | **String** | The post text/caption. On ad rows (isAd: true) this is the AD NAME, not the underlying post&#39;s caption — the creative text isn&#39;t exposed here. | [optional] |
| **picture** | **String** | Post media thumbnail. On ad rows this is the ad creative thumbnail. | [optional] |
| **permalink** | **String** | Public URL of the post. On ad rows: the Facebook dark-post URL (facebook placement) or the IG media permalink (instagram placement); may be null when unknown. | [optional] |
| **created_time** | **Time** |  | [optional] |
| **comment_count** | **Integer** |  | [optional] |
| **like_count** | **Integer** | Not fetched for ad rows (always 0 there). | [optional] |
| **cid** | **String** | Bluesky content identifier | [optional] |
| **subreddit** | **String** | Reddit subreddit name | [optional] |
| **is_ad** | **Boolean** | True when this row is an ad (boosted/dark post). &#x60;platform&#x60; is then the placement (facebook &#x3D; the Page dark post / instagram &#x3D; the IG media), &#x60;id&#x60; is &#x60;{adId}:{placement}&#x60;, and the thread is at GET /v1/ads/{adId}/comments?placement&#x3D;{placement}. | [optional] |
| **ad_id** | **String** | Internal Zernio ad id — only on ad rows. | [optional] |
| **placement** | **String** | Which side of the ad this row&#39;s comments are on — only on ad rows. | [optional] |

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
  ad_id: null,
  placement: null
)
```

