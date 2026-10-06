# Zernio::GetInstagramOnlineFollowers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **metric** | **String** |  | [optional] |
| **days** | [**Array&lt;GetInstagramOnlineFollowers200ResponseDaysInner&gt;**](GetInstagramOnlineFollowers200ResponseDaysInner.md) | Oldest first, as Meta returns them. Days Meta still reports as empty are left out. | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInstagramOnlineFollowers200Response.new(
  success: null,
  account_id: null,
  platform: null,
  metric: null,
  days: null,
  note: null
)
```

