# Zernio::GetSmsUsage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** |  | [optional] |
| **_until** | **Time** |  | [optional] |
| **group_by** | **String** |  | [optional] |
| **totals** | [**GetSmsUsage200ResponseTotals**](GetSmsUsage200ResponseTotals.md) |  | [optional] |
| **groups** | [**Array&lt;GetSmsUsage200ResponseGroupsInner&gt;**](GetSmsUsage200ResponseGroupsInner.md) | Present (possibly empty) when &#x60;groupBy&#x60; is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSmsUsage200Response.new(
  since: null,
  _until: null,
  group_by: null,
  totals: null,
  groups: null
)
```

