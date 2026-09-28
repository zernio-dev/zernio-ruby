# Zernio::RcsTestDevice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_device_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **invite_status** | **String** | The phone must accept the invite in its messaging app before it receives messages. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsTestDevice.new(
  test_device_id: null,
  phone_number: null,
  invite_status: null
)
```

