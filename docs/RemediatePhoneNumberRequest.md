# Zernio::RemediatePhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **values** | **Hash&lt;String, String&gt;** |  | [optional] |
| **documents** | [**Array&lt;RemediatePhoneNumberRequestDocumentsInner&gt;**](RemediatePhoneNumberRequestDocumentsInner.md) |  | [optional] |
| **address** | **Object** | Same shape as the KYC submit address. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemediatePhoneNumberRequest.new(
  values: null,
  documents: null,
  address: null
)
```

