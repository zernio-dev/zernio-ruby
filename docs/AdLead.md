# Zernio::AdLead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio lead id. | [optional] |
| **leadgen_id** | **String** | Meta lead id. On LinkedIn, the leadFormResponse id. | [optional] |
| **form_id** | **String** |  | [optional] |
| **form_name** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **ad_id** | **String** |  | [optional] |
| **adset_id** | **String** |  | [optional] |
| **campaign_id** | **String** | On LinkedIn, this is the LinkedIn Campaign id, which corresponds to platformAdSetId on GET /v1/ads (LinkedIn&#39;s Campaign Group is Zernio&#39;s campaign). | [optional] |
| **is_organic** | **Boolean** |  | [optional] |
| **created_time** | **String** | ISO 8601. | [optional] |
| **fields** | **Hash&lt;String, String&gt;** | Question key → answer. On LinkedIn, the key is the lowercased predefinedField, else the question name, else the numeric questionId; multiple-choice values are option labels (unlike Meta, which returns the option key). | [optional] |
| **field_data** | **Array&lt;Object&gt;** | Raw Meta field_data. | [optional] |
| **consents** | [**Array&lt;AdLeadConsent&gt;**](AdLeadConsent.md) | Meta lead forms only: the answer to every custom disclaimer checkbox, required or optional. Empty when the form has none, and may be empty on leads stored before 2026-10-22. LinkedIn leads do not carry the field. | [optional] |
| **status** | **String** | Meta leads only. &#x60;contacted&#x60; is set when the first WhatsApp message of a lead_received workflow is delivered, &#x60;unreachable&#x60; when it fails or the phone number is not valid. | [optional] |
| **status_changed_at** | **Time** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **contact_id** | **String** | The contact a lead_received workflow created or matched for this lead. | [optional] |
| **first_contacted_at** | **Time** | When the first WhatsApp message to the lead was delivered. | [optional] |
| **conversation_id** | **String** | The Inbox conversation a lead_received workflow opened with the lead. | [optional] |
| **webhook_delivered_at** | **Time** | Meta leads only. When the &#x60;lead.received&#x60; webhook was delivered; null while it has not been. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdLead.new(
  id: null,
  leadgen_id: null,
  form_id: null,
  form_name: null,
  account_id: null,
  ad_id: null,
  adset_id: null,
  campaign_id: null,
  is_organic: null,
  created_time: null,
  fields: null,
  field_data: null,
  consents: null,
  status: null,
  status_changed_at: null,
  value: null,
  currency: null,
  contact_id: null,
  first_contacted_at: null,
  conversation_id: null,
  webhook_delivered_at: null
)
```

