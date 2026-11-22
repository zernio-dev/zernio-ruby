# Zernio::GoogleAdsPlatformQueryBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio id of the connected Google Ads account. |  |
| **ad_account_id** | **String** | The Google Ads customer to query. Defaults to the connection&#39;s own customer. | [optional] |
| **query** | **String** | A GAQL SELECT statement, up to 10,000 characters. Read only. |  |
| **cursor** | **String** | The pagination.nextCursor of the previous page, unchanged. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAdsPlatformQueryBody.new(
  account_id: null,
  ad_account_id: null,
  query: null,
  cursor: null
)
```

