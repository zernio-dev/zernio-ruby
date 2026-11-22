# Zernio::AutomationPostSubjects

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **each** | **String** |  |  |
| **profile_id** | **String** | The profile whose posts are checked. |  |
| **account_ids** | **Array&lt;String&gt;** | Only posts of these accounts. Each must be active on the profile. | [optional] |
| **published_within** | **String** | How far back posts are checked, by when they were published. Whole days, from &#x60;1d&#x60; to &#x60;30d&#x60; (&#x60;48h&#x60; is 2 days). | [optional][default to &#39;7d&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationPostSubjects.new(
  each: null,
  profile_id: null,
  account_ids: null,
  published_within: 3d
)
```

