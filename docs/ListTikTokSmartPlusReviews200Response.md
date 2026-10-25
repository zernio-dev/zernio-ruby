# Zernio::ListTikTokSmartPlusReviews200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **include_deleted** | **Boolean** |  | [optional] |
| **max_age_seconds** | **Integer** | The freshness window this page was read with. | [optional] |
| **page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **total_pages** | **Integer** |  | [optional] |
| **total_smart_plus_ads** | **Integer** | Smart+ ads of the advertiser across all pages. | [optional] |
| **listing** | [**ListTikTokSmartPlusReviews200ResponseListing**](ListTikTokSmartPlusReviews200ResponseListing.md) |  | [optional] |
| **review_error** | [**ListTikTokSmartPlusReviews200ResponseReviewError**](ListTikTokSmartPlusReviews200ResponseReviewError.md) |  | [optional] |
| **counts** | [**ListTikTokSmartPlusReviews200ResponseCounts**](ListTikTokSmartPlusReviews200ResponseCounts.md) |  | [optional] |
| **oldest_read_at** | **Time** | The oldest &#x60;readAt&#x60; in &#x60;items&#x60;. Null when &#x60;items&#x60; is empty. | [optional] |
| **items** | [**Array&lt;ListTikTokSmartPlusReviews200ResponseItemsInner&gt;**](ListTikTokSmartPlusReviews200ResponseItemsInner.md) |  | [optional] |
| **failed_smart_plus_ads** | [**Array&lt;ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInner&gt;**](ListTikTokSmartPlusReviews200ResponseFailedSmartPlusAdsInner.md) | Smart+ ads of this page whose review TikTok refused on its own (for example an ad deleted on TikTok since the listing was read). Zernio splits a refused batch in halves (at most 16 extra calls per page), so the other ads of the batch are still read; ads left unresolved by that cap stay in &#x60;items&#x60; with their stored review or in &#x60;pendingSmartPlusAdIds&#x60;. Empty when none. | [optional] |
| **incomplete** | **Boolean** | True while some Smart+ ads of this page were never read (&#x60;counts.pending &gt; 0&#x60;). Stale items alone keep it false. | [optional] |
| **all_fresh** | **Boolean** | True when every item and refusal of this page was read within &#x60;maxAgeSeconds&#x60; and nothing is pending. False with &#x60;incomplete: false&#x60; means the page is complete but some reviews are older than the window; a later read refreshes them oldest first. | [optional] |
| **pending_smart_plus_ad_ids** | **Array&lt;String&gt;** | Smart+ ads of this page never read. Empty when every ad has a stored review or refusal. | [optional] |
| **retry_after_seconds** | **Integer** | Seconds to wait before reading this page again, set only while &#x60;incomplete&#x60; is true and review reads are paused. Null when complete (stale items included), or when the page is incomplete without a quota pause (read it again right away). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListTikTokSmartPlusReviews200Response.new(
  ad_account_id: null,
  include_deleted: null,
  max_age_seconds: null,
  page: null,
  page_size: null,
  total_pages: null,
  total_smart_plus_ads: null,
  listing: null,
  review_error: null,
  counts: null,
  oldest_read_at: null,
  items: null,
  failed_smart_plus_ads: null,
  incomplete: null,
  all_fresh: null,
  pending_smart_plus_ad_ids: null,
  retry_after_seconds: null
)
```

