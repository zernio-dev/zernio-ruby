# Late::ListAccounts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;SocialAccount&gt;**](SocialAccount.md) |  | [optional] |
| **has_analytics_access** | **Boolean** | Whether user has analytics add-on access | [optional] |
| **pagination** | [**Pagination**](Pagination.md) | Only present when page/limit params are provided | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::ListAccounts200Response.new(
  accounts: null,
  has_analytics_access: null,
  pagination: null
)
```

