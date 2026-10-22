# Zernio::ListTikTokSmartPlusReviews200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **include_deleted** | **Boolean** |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |
| **total_smart_plus_ads** | **Integer** | Smart+ ads of the advertiser across all pages. | [optional] |
| **items** | [**Array&lt;ListTikTokSmartPlusReviews200ResponseItemsInner&gt;**](ListTikTokSmartPlusReviews200ResponseItemsInner.md) |  | [optional] |
| **failed_smart_plus_ads** | [**Array&lt;ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInner&gt;**](ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInner.md) | Smart+ ads of this page whose review TikTok refused on its own (for example an ad deleted on TikTok since the listing was cached). Zernio splits a refused batch in halves (at most 16 extra calls per page), so the other ads of the batch are still read; ads left unresolved by that cap carry the batch error. Empty when none. | [optional] |
| **incomplete** | **Boolean** | True when some Smart+ ads of this page could not be read because of TikTok&#39;s review quota. | [optional] |
| **pending_smart_plus_ad_ids** | **Array&lt;String&gt;** | Smart+ ads of this page still to read. Empty when complete. | [optional] |
| **retry_after_seconds** | **Integer** | Seconds to wait before reading this page again. Null when complete. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListTikTokSmartPlusReviews200Response.new(
  ad_account_id: null,
  include_deleted: null,
  page: null,
  page_size: null,
  total_pages: null,
  total_smart_plus_ads: null,
  items: null,
  failed_smart_plus_ads: null,
  incomplete: null,
  pending_smart_plus_ad_ids: null,
  retry_after_seconds: null
)
```

