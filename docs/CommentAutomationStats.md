# Zernio::CommentAutomationStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **triggered** | **Integer** | Matched triggers that reached the audience or send stage. | [optional] |
| **dms_sent** | **Integer** |  | [optional] |
| **dms_failed** | **Integer** |  | [optional] |
| **unique_contacts** | **Integer** |  | [optional] |
| **tracked_sends** | **Integer** | DMs sent with a trackable (wrapped) link. CTR denominator: divide clicks by this, not dmsSent. Lags dmsSent for campaigns that predate click tracking. | [optional] |
| **link_clicks** | **Integer** | Total clicks on tracked links (bots/prefetch excluded). | [optional] |
| **unique_clicks** | **Integer** | Distinct people who clicked a tracked link. | [optional] |
| **delivered** | **Integer** | DMs confirmed delivered (Messenger; IG emits no delivery receipt). | [optional] |
| **read** | **Integer** | DMs confirmed read (IG messaging_seen / Messenger message_reads). | [optional] |
| **audience_skipped** | **Integer** | Triggers the audience rule did not answer with the DM. | [optional] |
| **follow_gate_sent** | **Integer** |  | [optional] |
| **follow_gate_passed** | **Integer** |  | [optional] |
| **follow_gate_failed** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationStats.new(
  triggered: null,
  dms_sent: null,
  dms_failed: null,
  unique_contacts: null,
  tracked_sends: null,
  link_clicks: null,
  unique_clicks: null,
  delivered: null,
  read: null,
  audience_skipped: null,
  follow_gate_sent: null,
  follow_gate_passed: null,
  follow_gate_failed: null
)
```

