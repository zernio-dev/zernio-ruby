# Zernio::XArticleTextRange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_index** | **Integer** | Inclusive start index in the block text. |  |
| **to_index** | **Integer** | Exclusive end index in the block text. Must be greater than or equal to from_index and no greater than the block text length. |  |
| **text** | **String** | Text represented by this metadata range. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XArticleTextRange.new(
  from_index: null,
  to_index: null,
  text: null
)
```

