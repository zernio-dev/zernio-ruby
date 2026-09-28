# Zernio::RcsCapability

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** |  | [optional] |
| **rcs_capable** | **Boolean** |  | [optional] |
| **features** | **Array&lt;String&gt;** | e.g. RICHCARD_STANDALONE, RICHCARD_CAROUSEL, ACTION_OPEN_URL, ACTION_DIAL. Absent when not capable. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsCapability.new(
  phone_number: null,
  rcs_capable: null,
  features: null
)
```

