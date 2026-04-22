# Zernio::ValidatePost200ResponseOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **valid** | **Boolean** |  | [optional] |
| **message** | **String** |  | [optional] |
| **warnings** | [**Array&lt;ValidatePost200ResponseOneOfWarningsInner&gt;**](ValidatePost200ResponseOneOfWarningsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ValidatePost200ResponseOneOf.new(
  valid: null,
  message: No validation issues found.,
  warnings: null
)
```

