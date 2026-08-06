# Zernio::InlineObject2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **required_group** | **String** | The resource group the key needs for this operation. Absent on admin-plane and unclassified-path denials. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InlineObject2.new(
  error: This API key has the &#39;messages&#39; resource group disabled. GET /api/v1/inbox/conversations requires it. Create a key with &#39;messages&#39; enabled in the dashboard API keys tab.,
  code: null,
  required_group: null
)
```

