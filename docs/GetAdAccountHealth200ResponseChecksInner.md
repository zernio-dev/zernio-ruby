# Zernio::GetAdAccountHealth200ResponseChecksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **status** | **String** |  |  |
| **title** | **String** |  |  |
| **message** | **String** |  |  |
| **code** | **String** | When the check is not &#x60;ok&#x60;: the error code a create refused for this reason returns. | [optional] |
| **hint** | **String** |  | [optional] |
| **fix** | [**GetAdAccountHealth200ResponseBlockersInnerFix**](GetAdAccountHealth200ResponseBlockersInnerFix.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHealth200ResponseChecksInner.new(
  id: null,
  status: null,
  title: null,
  message: null,
  code: null,
  hint: null,
  fix: null
)
```

