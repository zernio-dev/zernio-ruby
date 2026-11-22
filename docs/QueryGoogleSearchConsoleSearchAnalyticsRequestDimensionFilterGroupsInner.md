# Zernio::QueryGoogleSearchConsoleSearchAnalyticsRequestDimensionFilterGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_type** | **String** |  | [optional] |
| **filters** | [**Array&lt;GscDimensionFilter&gt;**](GscDimensionFilter.md) |  | [optional] |
| **filter_lists** | [**Array&lt;GscDimensionFilterList&gt;**](GscDimensionFilterList.md) | Matches a row whose value is any of the expressions. A dimension goes in filters or in filterLists, not both. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryGoogleSearchConsoleSearchAnalyticsRequestDimensionFilterGroupsInner.new(
  group_type: null,
  filters: null,
  filter_lists: null
)
```

