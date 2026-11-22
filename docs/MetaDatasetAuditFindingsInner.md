# Zernio::MetaDatasetAuditFindingsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **severity** | **String** |  |  |
| **title** | **String** |  |  |
| **detail** | **String** |  |  |
| **event_name** | **String** |  | [optional] |
| **fix** | [**MetaDatasetAuditFindingsInnerFix**](MetaDatasetAuditFindingsInnerFix.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaDatasetAuditFindingsInner.new(
  id: browser_only:Purchase,
  severity: null,
  title: null,
  detail: null,
  event_name: null,
  fix: null
)
```

