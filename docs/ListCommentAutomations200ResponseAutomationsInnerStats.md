# Zernio::ListCommentAutomations200ResponseAutomationsInnerStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **triggered** | **Integer** |  | [optional] |
| **dms_sent** | **Integer** |  | [optional] |
| **dms_failed** | **Integer** |  | [optional] |
| **unique_contacts** | **Integer** |  | [optional] |
| **link_clicks** | **Integer** | Total clicks on tracked links (bots/prefetch excluded). | [optional] |
| **unique_clicks** | **Integer** | Distinct people who clicked a tracked link. | [optional] |
| **delivered** | **Integer** | DMs confirmed delivered (Messenger; IG emits no delivery receipt). | [optional] |
| **read** | **Integer** | DMs confirmed read (IG messaging_seen / Messenger message_reads). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCommentAutomations200ResponseAutomationsInnerStats.new(
  triggered: null,
  dms_sent: null,
  dms_failed: null,
  unique_contacts: null,
  link_clicks: null,
  unique_clicks: null,
  delivered: null,
  read: null
)
```

