# Late::SendInboxMessageRequestInteractiveActionOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **button** | **String** | CTA label that opens the list (max ~20 chars). |  |
| **sections** | [**Array&lt;SendInboxMessageRequestInteractiveActionOneOfSectionsInner&gt;**](SendInboxMessageRequestInteractiveActionOneOfSectionsInner.md) | 1-10 sections. Total rows across all sections cannot exceed 10. |  |

## Example

```ruby
require 'late-sdk'

instance = Late::SendInboxMessageRequestInteractiveActionOneOf.new(
  button: null,
  sections: null
)
```

