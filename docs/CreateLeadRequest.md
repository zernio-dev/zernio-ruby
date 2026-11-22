# Zernio::CreateLeadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile the lead belongs to. |  |
| **email** | **String** | Required unless phone is given. | [optional] |
| **phone** | **String** | Required unless email is given. E.164 is best. | [optional] |
| **fields** | **Hash&lt;String, String&gt;** | Other answers, field name to value (&#x60;full_name&#x60;, &#x60;company&#x60;, ...). Stored on the lead, never sent to an ad platform. | [optional] |
| **form_id** | **String** | Your id for the form. Defaults to &#x60;api&#x60;. | [optional] |
| **form_name** | **String** |  | [optional] |
| **lead_id** | **String** | Your id for this lead (a CRM id, a submission id). Makes the call idempotent. | [optional] |
| **submitted_at** | **Time** | When the form was submitted. Defaults to now. | [optional] |
| **source_url** | **String** | The page the form was submitted on, with its query string. | [optional] |
| **visitor_id** | **String** | The Zernio tag visitor id, from the &#x60;_zid&#x60; cookie. | [optional] |
| **click_ids** | **Hash&lt;String, String&gt;** | Ad click and browser ids: &#x60;fbclid&#x60; or &#x60;fbc&#x60;, &#x60;fbp&#x60;, &#x60;gclid&#x60;, &#x60;gbraid&#x60;, &#x60;wbraid&#x60;, &#x60;ttclid&#x60;, &#x60;msclkid&#x60;, &#x60;li_fat_id&#x60;, ... | [optional] |
| **utm** | **Hash&lt;String, String&gt;** | &#x60;utm_source&#x60;, &#x60;utm_campaign&#x60;, ... | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadRequest.new(
  profile_id: null,
  email: null,
  phone: null,
  fields: null,
  form_id: null,
  form_name: null,
  lead_id: null,
  submitted_at: null,
  source_url: null,
  visitor_id: null,
  click_ids: null,
  utm: null
)
```

