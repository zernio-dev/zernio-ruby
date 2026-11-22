# Zernio::SalesforceSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Zernio account ID of the Salesforce connection. |  |
| **platform** | **String** |  |  |
| **org_id** | **String** | 18-character Salesforce organization ID. |  |
| **org_name** | **String** | The org&#39;s name, when the connected user can read it. |  |
| **environment** | **String** | Whether the org was connected through login.salesforce.com or test.salesforce.com. |  |
| **instance_url** | **String** | The org&#39;s API host, for example &#x60;https://acme.my.salesforce.com&#x60;. |  |
| **installed_by** | **String** | Email or username of the Salesforce user who connected the org. |  |
| **sync_contacts** | **Boolean** | Whether Zernio creates a Lead or Contact (per &#x60;createAs&#x60;) for an inbox contact that matches nobody by phone or email. |  |
| **log_messages** | **Boolean** | Whether Zernio logs inbox messages. Each person, channel and UTC day gets one completed Task (subject &#x60;WhatsApp conversation · 2026-11-17&#x60;) whose Description holds the transcript; a day past 32,000 characters continues in a Task marked \&quot;(part 2)\&quot;. |  |
| **create_as** | **String** | What a person new to Salesforce is created as. |  |
| **log_delivery_status** | **Boolean** | Whether sent WhatsApp, SMS and RCS messages in the transcript are marked sent, delivered, read, played or failed. |  |
| **sync_issue** | [**SalesforceSettingsSyncIssue**](SalesforceSettingsSyncIssue.md) |  |  |
| **use_opportunities_in_results** | **Boolean** | Whether closed-won Opportunities count as sales (Amount, in the Opportunity&#39;s or the org&#39;s currency) on the ad campaign named by their Primary Campaign Source, in campaign results and ad rules. Lost or reopened Opportunities stop counting. |  |
| **report_opportunities_to_ads** | **Boolean** | Whether Zernio sends newly closed-won Opportunities as Purchase events (source &#x60;salesforce&#x60;) to the profile&#39;s event destinations. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SalesforceSettings.new(
  _id: null,
  platform: null,
  org_id: null,
  org_name: null,
  environment: null,
  instance_url: null,
  installed_by: null,
  sync_contacts: null,
  log_messages: null,
  create_as: null,
  log_delivery_status: null,
  sync_issue: null,
  use_opportunities_in_results: null,
  report_opportunities_to_ads: null
)
```

