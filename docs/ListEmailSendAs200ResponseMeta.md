# Zernio::ListEmailSendAs200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list** | **String** | &#x60;provider&#x60;: the provider lists every address (Gmail), nothing can be declared. &#x60;partial&#x60;: declare the addresses the provider cannot list (Outlook). | [optional] |
| **provider_signatures** | **Boolean** | Whether the provider&#39;s own signatures appear here (Gmail). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEmailSendAs200ResponseMeta.new(
  list: null,
  provider_signatures: null
)
```

