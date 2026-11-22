# Zernio::CrmDeal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object_type** | **String** |  |  |
| **name** | **String** |  |  |
| **stage** | **String** | HubSpot stage id (&#x60;closedwon&#x60;), Salesforce &#x60;StageName&#x60; (&#x60;Closed Won&#x60;) or HighLevel pipeline stage id. A HighLevel opportunity&#39;s won or lost &#x60;status&#x60; is a native field (&#x60;properties&#x3D;status&#x60;). |  |
| **amount** | **Float** |  |  |
| **currency** | **String** | ISO 4217. HubSpot sets it on multi-currency portals only. Salesforce gives the Opportunity&#39;s currency on multi-currency orgs, else the org currency read from its Currency Locale. Null on HighLevel. |  |
| **close_date** | **Date** | Null on HighLevel, whose opportunities have no close date. |  |
| **owner_id** | **String** |  |  |
| **contact_ids** | **Array&lt;String&gt;** | Associated HubSpot contacts, the Opportunity&#39;s contact roles (primary first), or the HighLevel opportunity&#39;s contact. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **url** | **String** |  |  |
| **properties** | **Hash&lt;String, Object&gt;** |  |  |
| **raw** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CrmDeal.new(
  id: null,
  object_type: null,
  name: null,
  stage: null,
  amount: null,
  currency: null,
  close_date: null,
  owner_id: null,
  contact_ids: null,
  created_at: null,
  updated_at: null,
  url: null,
  properties: null,
  raw: null
)
```

