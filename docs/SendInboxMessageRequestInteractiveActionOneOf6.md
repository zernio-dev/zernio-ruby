# Zernio::SendInboxMessageRequestInteractiveActionOneOf6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta catalog ID connected to the WhatsApp Business Account. |  |
| **sections** | [**Array&lt;SendInboxMessageRequestInteractiveActionOneOf6SectionsInner&gt;**](SendInboxMessageRequestInteractiveActionOneOf6SectionsInner.md) | 1-10 sections. Total products across all sections cannot exceed 30. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestInteractiveActionOneOf6.new(
  catalog_id: null,
  sections: null
)
```

