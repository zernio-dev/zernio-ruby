# Zernio::SendInboxMessageRequestInteractiveAction

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::SendInboxMessageRequestInteractiveAction.openapi_one_of
# =>
# [
#   :'SendInboxMessageRequestInteractiveActionOneOf',
#   :'SendInboxMessageRequestInteractiveActionOneOf1',
#   :'SendInboxMessageRequestInteractiveActionOneOf2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::SendInboxMessageRequestInteractiveAction.build(data)
# => #<SendInboxMessageRequestInteractiveActionOneOf:0x00007fdd4aab02a0>

Zernio::SendInboxMessageRequestInteractiveAction.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SendInboxMessageRequestInteractiveActionOneOf`
- `SendInboxMessageRequestInteractiveActionOneOf1`
- `SendInboxMessageRequestInteractiveActionOneOf2`
- `nil` (if no type matches)

