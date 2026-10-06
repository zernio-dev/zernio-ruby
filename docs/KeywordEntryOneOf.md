# Zernio::KeywordEntryOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  |  |
| **match_type** | **String** | Defaults to broad. Accepted in any case (EXACT, Exact) and stored lowercase. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::KeywordEntryOneOf.new(
  text: null,
  match_type: null
)
```

