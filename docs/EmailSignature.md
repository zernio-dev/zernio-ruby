# Zernio::EmailSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **html** | **String** |  | [optional] |
| **text** | **String** | Appended to plain-text bodies. When &#x60;null&#x60;, the html stripped to text is used. | [optional] |
| **account_id** | **String** | &#x60;null&#x60; for a workspace-wide signature. | [optional] |
| **default_for** | **Array&lt;String&gt;** | Sending addresses this signature is the default for. Each address has one default per scope; an account signature wins over a workspace one. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailSignature.new(
  id: null,
  name: null,
  html: null,
  text: null,
  account_id: null,
  default_for: null,
  created_at: null,
  updated_at: null
)
```

