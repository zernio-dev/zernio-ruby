# Zernio::ListDiscordGuildMembers200ResponsePagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_cursor** | **String** | Pass as &#x60;after&#x60; on the next call. Null when there are no more pages. | [optional] |
| **has_more** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListDiscordGuildMembers200ResponsePagination.new(
  next_cursor: null,
  has_more: null
)
```

