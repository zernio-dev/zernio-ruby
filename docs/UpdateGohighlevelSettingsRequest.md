# Zernio::UpdateGohighlevelSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relay_conversions** | **Boolean** | Relay HighLevel CRM events (new contacts, won opportunities, appointments, paid invoices and orders) as conversions with &#x60;source&#x60; &#x60;gohighlevel&#x60;. | [optional] |
| **write_back_attribution** | **Boolean** | Write each relayed conversion onto the &#x60;Zernio Conversions&#x60; custom field of the HighLevel contact. | [optional] |
| **report_to_ads** | **Boolean** | Also forward relayed conversions to the profile&#39;s ad platform destinations. Off stores them only. | [optional] |
| **sync_contacts** | **Boolean** | Match inbox contacts to HighLevel contacts (phone, then email) and create the ones that do not exist. | [optional] |
| **log_messages** | **Boolean** | Log inbox messages from every channel on the matched HighLevel contact, one note per channel and UTC day. | [optional] |
| **log_delivery_status** | **Boolean** | Mark sent, delivered, read and failed on logged outgoing messages. | [optional] |
| **sync_ad_leads** | **Boolean** | Create or update a HighLevel contact for every lead from the profile&#39;s ad network lead forms (Meta, TikTok, LinkedIn, Google), tagged with the network, campaign and form. | [optional] |
| **mirror_conversations** | **Boolean** | Put Telegram, LINE, WeChat, iMessage and RCS messages into the contact&#39;s Conversations thread under the Zernio channel, so a HighLevel user reads and answers them there. Off logs them as notes. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGohighlevelSettingsRequest.new(
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

