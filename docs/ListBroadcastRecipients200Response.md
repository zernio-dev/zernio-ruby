# Zernio::ListBroadcastRecipients200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **recipients** | [**Array&lt;ListBroadcastRecipients200ResponseRecipientsInner&gt;**](ListBroadcastRecipients200ResponseRecipientsInner.md) |  | [optional] |
| **pagination** | [**ListContacts200ResponsePagination**](ListContacts200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBroadcastRecipients200Response.new(
  success: null,
  recipients: null,
  pagination: null
)
```

