# Zernio::EmailCapabilitiesForward

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **native** | **Boolean** | The provider forwards itself (Outlook&#39;s createForward); otherwise Zernio builds the forward. | [optional] |
| **as_attachment** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailCapabilitiesForward.new(
  native: null,
  as_attachment: null
)
```

