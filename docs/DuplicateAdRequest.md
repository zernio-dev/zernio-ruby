# Zernio::DuplicateAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_set_id** | **String** | Destination platform ad set id (defaults to the source&#39;s ad set) | [optional] |
| **status_option** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **rename_strategy** | **String** |  | [optional] |
| **rename_prefix** | **String** |  | [optional] |
| **rename_suffix** | **String** |  | [optional] |
| **sync_after** | **Boolean** |  | [optional][default to true] |
| **reuse_source_creative** | **Boolean** | Point the copy at the source ad&#39;s creative object instead of copying it, so the copy keeps the same Facebook post, the same Instagram media, their existing likes, comments and shares, and the full creative setup (text variations included). This is what Ads Manager&#39;s \&quot;show existing reactions, comments and shares\&quot; does. Meta&#39;s native copy always publishes new posts. A creative belongs to one ad account, so &#x60;adSetId&#x60; must be in the source ad&#39;s account. 400 when the source ad has no creative yet. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateAdRequest.new(
  ad_set_id: null,
  status_option: null,
  rename_strategy: null,
  rename_prefix: null,
  rename_suffix: null,
  sync_after: null,
  reuse_source_creative: null
)
```

