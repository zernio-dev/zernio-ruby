# Zernio::FetchGoogleBusinessVerificationOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language_code** | **String** |  |  |
| **context** | **Object** | ServiceBusinessContext. Required for service-area businesses (must include the service address). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FetchGoogleBusinessVerificationOptionsRequest.new(
  language_code: en-US,
  context: null
)
```

