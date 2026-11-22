# Zernio::GohighlevelAudienceSyncOverview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** | The sub-account&#39;s tags, null when HighLevel does not let Zernio read them. Any tag still syncs. |  |
| **target_choices** | [**Array&lt;GohighlevelAudienceSyncOverviewTargetChoicesInner&gt;**](GohighlevelAudienceSyncOverviewTargetChoicesInner.md) | The Meta and Reddit ad accounts of the profile a tag can sync to. |  |
| **syncs** | [**Array&lt;GohighlevelAudienceSync&gt;**](GohighlevelAudienceSync.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GohighlevelAudienceSyncOverview.new(
  tags: null,
  target_choices: null,
  syncs: null
)
```

