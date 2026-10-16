# Zernio::GetInboxPostComments200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **post_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **subreddit** | **String** | (Reddit only) Subreddit name | [optional] |
| **post_urn** | **String** | (LinkedIn only) The post URN that was queried, after a bare number is read as urn:li:activity:&lt;n&gt; | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **ad_comments** | [**GetInboxPostComments200ResponseMetaAdComments**](GetInboxPostComments200ResponseMetaAdComments.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxPostComments200ResponseMeta.new(
  platform: null,
  post_id: null,
  account_id: null,
  subreddit: null,
  post_urn: null,
  last_updated: null,
  ad_comments: null
)
```

