# Zernio::ContentRetentionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | &#x60;standard&#x60; stores content. &#x60;none&#x60; is zero content retention: identifiers and metadata only. |  |
| **profile_ids** | **Array&lt;String&gt;** | Returned by GET. Profiles that use zero content retention on their own while the team is &#x60;standard&#x60;. Change one with &#x60;contentRetention&#x60; on PUT /v1/profiles/{profileId}. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ContentRetentionResponse.new(
  mode: null,
  profile_ids: null
)
```

