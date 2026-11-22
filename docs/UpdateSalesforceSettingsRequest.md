# Zernio::UpdateSalesforceSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_contacts** | **Boolean** | Create a Lead or Contact for an inbox contact that matches nobody by phone (any phone field) or email. A match is linked as it is and never updated. | [optional] |
| **log_messages** | **Boolean** | Log inbound and outbound inbox messages as one conversation Task per person, channel and day. | [optional] |
| **create_as** | **String** | What a person new to Salesforce is created as. Leads get Company &#x60;[not provided]&#x60;. | [optional] |
| **log_delivery_status** | **Boolean** | Mark sent WhatsApp, SMS and RCS messages in the transcript as sent, delivered, read, played or failed. | [optional] |
| **use_opportunities_in_results** | **Boolean** | Count closed-won Opportunities as sales on the ad campaign named by their Primary Campaign Source, in campaign results and ad rules. Turning it on also fills in the Opportunities won in the last 90 days, never sent to the ad platforms. Lost or reopened Opportunities stop counting. | [optional] |
| **report_opportunities_to_ads** | **Boolean** | Send each newly closed-won Opportunity once as a Purchase event (source &#x60;salesforce&#x60;, event id &#x60;salesforce_opp_{orgId}_{opportunityId}&#x60;) to the profile&#39;s event destinations, with the email and phone of its primary contact role, else the first Contact of its Account. Opportunities won before it was turned on are not sent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateSalesforceSettingsRequest.new(
  sync_contacts: null,
  log_messages: null,
  create_as: null,
  log_delivery_status: null,
  use_opportunities_in_results: null,
  report_opportunities_to_ads: null
)
```

