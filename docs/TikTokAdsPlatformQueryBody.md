# Zernio::TikTokAdsPlatformQueryBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio id of the connected TikTok ads account. |  |
| **ad_account_id** | **String** | The numeric TikTok advertiser id. |  |
| **report_type** | **String** | Defaults to BASIC. | [optional][default to &#39;BASIC&#39;] |
| **data_level** | **String** | The level of each row. |  |
| **dimensions** | **Array&lt;String&gt;** | TikTok dimensions, 1 to 4. |  |
| **metrics** | **Array&lt;String&gt;** | TikTok metrics, up to 100. |  |
| **filtering** | [**Array&lt;MetaAdsPlatformQueryBodyFilteringInner&gt;**](MetaAdsPlatformQueryBodyFilteringInner.md) | TikTok filters of field, operator and value, up to 25. A filter on an entity finer than dataLevel is refused. | [optional] |
| **from_date** | **Date** | First day, YYYY-MM-DD, inclusive. |  |
| **to_date** | **Date** | Last day, YYYY-MM-DD, inclusive. |  |
| **page_size** | **Integer** | Rows per page, up to 1,000. Defaults to 1,000. | [optional][default to 1000] |
| **cursor** | **String** | The pagination.nextCursor of the previous page, unchanged. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TikTokAdsPlatformQueryBody.new(
  account_id: null,
  ad_account_id: null,
  report_type: null,
  data_level: null,
  dimensions: null,
  metrics: null,
  filtering: null,
  from_date: null,
  to_date: null,
  page_size: null,
  cursor: null
)
```

