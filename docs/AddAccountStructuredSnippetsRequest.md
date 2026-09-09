# Zernio::AddAccountStructuredSnippetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **structured_snippets** | [**Array&lt;GoogleStructuredSnippet&gt;**](GoogleStructuredSnippet.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAccountStructuredSnippetsRequest.new(
  account_id: null,
  customer_id: null,
  structured_snippets: null
)
```

