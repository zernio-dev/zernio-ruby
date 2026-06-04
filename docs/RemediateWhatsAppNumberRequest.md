# Zernio::RemediateWhatsAppNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values** | **Hash&lt;String, String&gt;** |  | [optional] |
| **documents** | [**Array&lt;RemediateWhatsAppNumberRequestDocumentsInner&gt;**](RemediateWhatsAppNumberRequestDocumentsInner.md) |  | [optional] |
| **address** | **Object** | Same shape as the KYC submit address. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemediateWhatsAppNumberRequest.new(
  values: null,
  documents: null,
  address: null
)
```

