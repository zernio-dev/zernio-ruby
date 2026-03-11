# Late::AddWhatsAppBroadcastRecipients200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **added** | **Integer** | Number of new recipients added | [optional] |
| **duplicates** | **Integer** | Number of duplicate phone numbers skipped | [optional] |
| **total_recipients** | **Integer** | Total recipient count after addition | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AddWhatsAppBroadcastRecipients200Response.new(
  success: null,
  added: null,
  duplicates: null,
  total_recipients: null
)
```

