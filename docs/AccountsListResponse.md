# Zernio::AccountsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;SocialAccount&gt;**](SocialAccount.md) |  |  |
| **has_analytics_access** | **Boolean** | Whether user has analytics add-on access |  |
| **pagination** | [**Pagination**](Pagination.md) | Only present when page/limit params are provided | [optional] |
| **profile_totals** | **Hash&lt;String, Integer&gt;** | Only with profileIds and perProfile. Accounts matching the filters per profile ID; a profile with none is absent. | [optional] |
| **status_counts** | [**AccountsListResponseStatusCounts**](AccountsListResponseStatusCounts.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AccountsListResponse.new(
  accounts: null,
  has_analytics_access: null,
  pagination: null,
  profile_totals: null,
  status_counts: null
)
```

