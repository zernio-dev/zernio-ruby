# Zernio::FacebookTaggedPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Facebook post ID of the post that tags the Page. |  |
| **message** | **String** |  |  |
| **created_time** | **String** | Publication time as Meta returns it (ISO 8601). |  |
| **tagged_time** | **String** | When the Page was tagged in the post (ISO 8601). |  |
| **permalink_url** | **String** | Public Facebook URL of the post. |  |
| **picture_url** | **String** | Full-size picture attached to the post. |  |
| **from** | [**FacebookTaggedPostFrom**](FacebookTaggedPostFrom.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookTaggedPost.new(
  id: null,
  message: null,
  created_time: null,
  tagged_time: null,
  permalink_url: null,
  picture_url: null,
  from: null
)
```

