# Zernio::SendPrivateReplyToCommentRequestButtonsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::SendPrivateReplyToCommentRequestButtonsInner.openapi_one_of
# =>
# [
#   :'SendPrivateReplyToCommentRequestButtonsInnerOneOf',
#   :'SendPrivateReplyToCommentRequestButtonsInnerOneOf1',
#   :'SendPrivateReplyToCommentRequestButtonsInnerOneOf2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::SendPrivateReplyToCommentRequestButtonsInner.build(data)
# => #<SendPrivateReplyToCommentRequestButtonsInnerOneOf:0x00007fdd4aab02a0>

Zernio::SendPrivateReplyToCommentRequestButtonsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SendPrivateReplyToCommentRequestButtonsInnerOneOf`
- `SendPrivateReplyToCommentRequestButtonsInnerOneOf1`
- `SendPrivateReplyToCommentRequestButtonsInnerOneOf2`
- `nil` (if no type matches)

