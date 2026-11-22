# Zernio::GohighlevelAudienceSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **tag** | **String** | The HighLevel tag, lowercased. |  |
| **status** | **String** |  |  |
| **member_count** | **Integer** | Contacts with the tag uploaded to the audiences so far. |  |
| **last_error** | **String** |  |  |
| **audiences** | [**Array&lt;GohighlevelAudienceSyncAudiencesInner&gt;**](GohighlevelAudienceSyncAudiencesInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GohighlevelAudienceSync.new(
  id: null,
  tag: null,
  status: null,
  member_count: null,
  last_error: null,
  audiences: null
)
```

