# Zernio::ListChangelog200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entries** | [**Array&lt;ApiChangelogEntry&gt;**](ApiChangelogEntry.md) |  |  |
| **next_cursor** | **Time** | &#x60;before&#x60; value for the next page, or null when this page was not full. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListChangelog200Response.new(
  entries: null,
  next_cursor: null
)
```

