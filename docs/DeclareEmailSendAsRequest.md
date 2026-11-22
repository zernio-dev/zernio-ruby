# Zernio::DeclareEmailSendAsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **email** | **String** |  |  |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DeclareEmailSendAsRequest.new(
  account_id: null,
  email: support@contoso.com,
  name: Contoso Support
)
```

