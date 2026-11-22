# Zernio::HubSpotSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** | Zernio account ID of the HubSpot connection. |  |
| **platform** | **String** |  |  |
| **hub_id** | **String** | HubSpot portal (hub) ID. |  |
| **hub_domain** | **String** | HubSpot portal domain, when HubSpot reports one. |  |
| **scopes** | **Array&lt;String&gt;** | OAuth scopes the portal granted. |  |
| **sync_contacts** | **Boolean** | Whether Zernio creates HubSpot contacts for inbox contacts that match none. |  |
| **log_messages** | **Boolean** | Whether Zernio logs inbox messages on HubSpot contact timelines. |  |
| **log_delivery_status** | **Boolean** | Whether Zernio keeps the delivery status (sent, delivered, read, played, failed) of logged outgoing messages up to date on their HubSpot timeline entries. Only applies while &#x60;logMessages&#x60; is on. Defaults to &#x60;true&#x60;. |  |
| **contact_defaults** | **Hash&lt;String, String&gt;** | Values Zernio sets on contacts it creates, keyed by HubSpot internal property name, for properties the portal requires on create (for example &#x60;lifecyclestage: lead&#x60;). The contact&#39;s own name, email and phone win. Empty object when none. |  |
| **sync_issue** | [**HubSpotSettingsSyncIssue**](HubSpotSettingsSyncIssue.md) |  |  |
| **report_deals** | **Boolean** | Whether Zernio sends closed-won deals as Purchase events to the profile&#39;s event destinations. |  |
| **use_deals_as_results** | **Boolean** | Whether closed-won deals count as sales on the ad campaign that brought their contact, in campaign results and ad rules. |  |
| **qualified_leads** | [**HubSpotQualifiedLeads**](HubSpotQualifiedLeads.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::HubSpotSettings.new(
  _id: null,
  platform: null,
  hub_id: null,
  hub_domain: null,
  scopes: null,
  sync_contacts: null,
  log_messages: null,
  log_delivery_status: null,
  contact_defaults: null,
  sync_issue: null,
  report_deals: null,
  use_deals_as_results: null,
  qualified_leads: null
)
```

