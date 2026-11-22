# Zernio::ListCrmOwners200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owners** | [**Array&lt;CrmOwner&gt;**](CrmOwner.md) |  |  |
| **next_cursor** | **String** | Pass back as &#x60;cursor&#x60; for the next page; null on the last page. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCrmOwners200Response.new(
  owners: null,
  next_cursor: null
)
```

