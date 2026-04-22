# Zernio::AccountsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;SocialAccount&gt;**](SocialAccount.md) |  | [optional] |
| **has_analytics_access** | **Boolean** | Whether user has analytics add-on access | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AccountsListResponse.new(
  accounts: null,
  has_analytics_access: null
)
```

