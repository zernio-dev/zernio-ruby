# Zernio::AccountsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;ListedAccount&gt;**](ListedAccount.md) |  |  |
| **has_analytics_access** | **Boolean** | Whether user has analytics add-on access |  |
| **pagination** | [**AccountsListResponsePagination**](AccountsListResponsePagination.md) |  | [optional] |
| **warning** | **String** | Only when an unpaged API request was cut at 500 accounts: how to list the rest with cursor paging. | [optional] |
| **profile_totals** | **Hash&lt;String, Integer&gt;** | Only with profileIds and perProfile. Accounts matching the filters per profile ID; a profile with none is absent. | [optional] |
| **status_counts** | [**AccountsListResponseStatusCounts**](AccountsListResponseStatusCounts.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AccountsListResponse.new(
  accounts: null,
  has_analytics_access: null,
  pagination: null,
  warning: null,
  profile_totals: null,
  status_counts: null
)
```

