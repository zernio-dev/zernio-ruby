# Zernio::ListLeads200ResponseLeadsInner

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

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLeads200ResponseLeadsInner.new(
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
  field_data: null
)
```

