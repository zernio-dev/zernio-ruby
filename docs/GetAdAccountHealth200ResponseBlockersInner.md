# Zernio::GetAdAccountHealth200ResponseBlockersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check** | **String** | The &#x60;checks[].id&#x60; that blocks. |  |
| **code** | **String** | The error code a refused create or boost returns for this reason. |  |
| **message** | **String** |  |  |
| **hint** | **String** | What to do, in English. |  |
| **fix** | [**GetAdAccountHealth200ResponseBlockersInnerFix**](GetAdAccountHealth200ResponseBlockersInnerFix.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHealth200ResponseBlockersInner.new(
  check: null,
  code: ad_account_payment_required,
  message: null,
  hint: null,
  fix: null
)
```

