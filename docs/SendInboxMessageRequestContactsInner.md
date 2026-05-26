# Zernio::SendInboxMessageRequestContactsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**SendInboxMessageRequestContactsInnerName**](SendInboxMessageRequestContactsInnerName.md) |  |  |
| **phones** | [**Array&lt;SendInboxMessageRequestContactsInnerPhonesInner&gt;**](SendInboxMessageRequestContactsInnerPhonesInner.md) |  | [optional] |
| **emails** | [**Array&lt;SendInboxMessageRequestContactsInnerEmailsInner&gt;**](SendInboxMessageRequestContactsInnerEmailsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestContactsInner.new(
  name: null,
  phones: null,
  emails: null
)
```

