# Zernio::QueryGoogleSearchConsoleSearchAnalytics200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **site_url** | **String** |  | [optional] |
| **from_date** | **Date** |  | [optional] |
| **to_date** | **Date** |  | [optional] |
| **aggregation_type** | **String** |  | [optional] |
| **first_incomplete_date** | **Date** | From this Pacific day on the numbers can still change. Sent with dataState all when grouped by date. | [optional] |
| **first_incomplete_hour** | **String** | The same for hours, with dataState hourly_all when grouped by hour. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryGoogleSearchConsoleSearchAnalytics200ResponseMeta.new(
  account_id: null,
  site_url: sc-domain:acme.com,
  from_date: null,
  to_date: null,
  aggregation_type: byProperty,
  first_incomplete_date: null,
  first_incomplete_hour: null
)
```

