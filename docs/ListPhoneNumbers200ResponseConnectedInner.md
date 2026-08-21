# Zernio::ListPhoneNumbers200ResponseConnectedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **connected_at** | **Time** |  | [optional] |
| **calling_enabled** | **Boolean** | Whether WhatsApp Business Calling is enabled on this number. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListPhoneNumbers200ResponseConnectedInner.new(
  account_id: null,
  phone_number: null,
  display_name: null,
  profile_id: null,
  connected_at: null,
  calling_enabled: null
)
```

