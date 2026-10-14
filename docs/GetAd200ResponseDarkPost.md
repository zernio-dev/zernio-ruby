# Zernio::GetAd200ResponseDarkPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **platform_post_id** | **String** | The dark post id, &#x60;{pageId}_{postId}&#x60;. | [optional] |
| **page_id** | **String** |  | [optional] |
| **is_dark_post** | **Boolean** | Always true. | [optional] |
| **ad_id** | **String** | Always null: Meta exposes no link from a placement dark post to its ad. | [optional] |
| **account_id** | **String** | Zernio Meta Ads account id for the Page, null when none is connected. | [optional] |
| **facebook_account_id** | **String** | Zernio Facebook account id of the Page. | [optional] |
| **platform_ad_account_ids** | **Array&lt;String&gt;** | Meta ad accounts (&#x60;act_...&#x60;) with synced ads on this Page. | [optional] |
| **first_seen_at** | **Time** |  | [optional] |
| **last_activity_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAd200ResponseDarkPost.new(
  platform: null,
  platform_post_id: null,
  page_id: null,
  is_dark_post: null,
  ad_id: null,
  account_id: null,
  facebook_account_id: null,
  platform_ad_account_ids: null,
  first_seen_at: null,
  last_activity_at: null
)
```

