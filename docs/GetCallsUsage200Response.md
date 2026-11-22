# Zernio::GetCallsUsage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** |  | [optional] |
| **_until** | **Time** |  | [optional] |
| **group_by** | **String** |  | [optional] |
| **profile** | [**UsageProfileRef**](UsageProfileRef.md) | Present with &#x60;profileId&#x60; / &#x60;externalId&#x60;: the profile the figures are scoped to. | [optional] |
| **totals** | [**GetCallsUsage200ResponseTotals**](GetCallsUsage200ResponseTotals.md) |  | [optional] |
| **groups** | [**Array&lt;GetCallsUsage200ResponseGroupsInner&gt;**](GetCallsUsage200ResponseGroupsInner.md) | Present (possibly empty) when &#x60;groupBy&#x60; is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCallsUsage200Response.new(
  since: null,
  _until: null,
  group_by: null,
  profile: null,
  totals: null,
  groups: null
)
```

