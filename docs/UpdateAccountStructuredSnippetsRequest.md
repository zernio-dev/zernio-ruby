# Zernio::UpdateAccountStructuredSnippetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **updates** | [**Array&lt;UpdateAccountStructuredSnippetsRequestUpdatesInner&gt;**](UpdateAccountStructuredSnippetsRequestUpdatesInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAccountStructuredSnippetsRequest.new(
  account_id: null,
  customer_id: null,
  updates: null
)
```

