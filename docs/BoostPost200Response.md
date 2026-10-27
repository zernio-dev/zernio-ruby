# Zernio::BoostPost200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_only** | **Boolean** | Always true in a validate-only response. | [optional] |
| **results** | [**Array&lt;BoostPost200ResponseResultsInner&gt;**](BoostPost200ResponseResultsInner.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPost200Response.new(
  validate_only: null,
  results: null,
  message: null
)
```

