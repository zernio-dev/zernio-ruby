# Zernio::GohighlevelSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **location_id** | **String** | The HighLevel sub-account (location) id. |  |
| **company_id** | **String** | The agency that owns the sub-account, null for a sub-account under no agency. |  |
| **location_name** | **String** |  |  |
| **installed_by** | **String** | The HighLevel user who installed the app. |  |
| **relay_conversions** | **Boolean** | CRM events are relayed as conversions. Default true. |  |
| **write_back_attribution** | **Boolean** | Relayed conversions are written back onto the HighLevel contact. Default true. |  |
| **report_to_ads** | **Boolean** | Relayed conversions are forwarded to the profile&#39;s ad platforms. A new connection starts with this on when its profile already sends events to an ad account, else off; reconnecting keeps the value. |  |
| **sync_contacts** | **Boolean** | Inbox contacts are matched to HighLevel contacts by phone, then email, and created there when none matches. Default true. |  |
| **log_messages** | **Boolean** | Inbox messages from every channel (both directions) are logged on the HighLevel contact as one note per channel and day. Default true. |  |
| **log_delivery_status** | **Boolean** | Logged outgoing messages show their delivery status (sent, delivered, read, failed) on their note line. Default true. |  |
| **sync_ad_leads** | **Boolean** | Leads from the profile&#39;s ad network lead forms become HighLevel contacts, deduplicated by email, then phone. Default true. |  |
| **mirror_conversations** | **Boolean** | Telegram, LINE, WeChat, iMessage and RCS messages go into the contact&#39;s Conversations thread under the Zernio channel (answerable from HighLevel) instead of a note. Default true. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GohighlevelSettings.new(
  _id: null,
  platform: null,
  location_id: null,
  company_id: null,
  location_name: null,
  installed_by: null,
  relay_conversions: null,
  write_back_attribution: null,
  report_to_ads: null,
  sync_contacts: null,
  log_messages: null,
  log_delivery_status: null,
  sync_ad_leads: null,
  mirror_conversations: null
)
```

