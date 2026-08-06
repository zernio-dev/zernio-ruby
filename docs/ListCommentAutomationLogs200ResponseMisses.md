# Zernio::ListCommentAutomationLogs200ResponseMisses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Number of non-matching comments in the retention window | [optional] |
| **retention_days** | **Integer** | How many days of non-matching comments the total covers | [optional] |
| **samples** | [**Array&lt;ListCommentAutomationLogs200ResponseMissesSamplesInner&gt;**](ListCommentAutomationLogs200ResponseMissesSamplesInner.md) | A few of the most recent non-matching comments, for diagnosing a keyword setup. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommentAutomationLogs200ResponseMisses.new(
  total: null,
  retention_days: null,
  samples: null
)
```

