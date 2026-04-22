# Zernio::AddBroadcastRecipients200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **added** | **Integer** | Number of recipients successfully added | [optional] |
| **skipped** | **Integer** | Number skipped (duplicates or missing channels) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddBroadcastRecipients200Response.new(
  success: null,
  added: null,
  skipped: null
)
```

