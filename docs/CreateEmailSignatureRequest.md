# Zernio::CreateEmailSignatureRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **html** | **String** |  |  |
| **text** | **String** |  | [optional] |
| **default_for** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateEmailSignatureRequest.new(
  account_id: null,
  name: Sales,
  html: &lt;b&gt;Ada Lovelace&lt;/b&gt;&lt;br&gt;Acme Sales,
  text: Ada Lovelace, Acme Sales,
  default_for: [&quot;sales@acme.com&quot;]
)
```

