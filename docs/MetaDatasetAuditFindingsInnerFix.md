# Zernio::MetaDatasetAuditFindingsInnerFix

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **by** | **String** | Who makes the fix: Zernio once turned on, you in your site or API call, or a setting in Events Manager. |  |
| **label** | **String** |  |  |
| **steps** | **Array&lt;String&gt;** |  |  |
| **url** | **String** | A Zernio dashboard path or an Events Manager link. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaDatasetAuditFindingsInnerFix.new(
  by: null,
  label: null,
  steps: null,
  url: null
)
```

