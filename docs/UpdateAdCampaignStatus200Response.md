# Late::UpdateAdCampaignStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated** | **Integer** | Number of ads updated | [optional] |
| **skipped** | **Integer** | Number of ads skipped | [optional] |
| **skipped_reasons** | **Array&lt;String&gt;** |  | [optional] |
| **message** | **String** | Human-readable summary (present when no ads were actionable) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateAdCampaignStatus200Response.new(
  updated: null,
  skipped: null,
  skipped_reasons: null,
  message: null
)
```

