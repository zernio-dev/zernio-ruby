# Zernio::SearchCrmContacts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | [**Array&lt;CrmContact&gt;**](CrmContact.md) |  |  |
| **next_cursor** | **String** | Pass back as &#x60;cursor&#x60; for the next page; null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchCrmContacts200Response.new(
  contacts: null,
  next_cursor: null
)
```

