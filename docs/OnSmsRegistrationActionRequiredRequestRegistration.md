# Zernio::OnSmsRegistrationActionRequiredRequestRegistration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **status** | **String** | Registration status when the event fired (changes_requested, pending or rejected). | [optional] |
| **profile_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnSmsRegistrationActionRequiredRequestRegistration.new(
  id: null,
  type: null,
  display_name: null,
  status: null,
  profile_id: null
)
```

