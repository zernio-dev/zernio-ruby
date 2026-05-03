# Zernio::Lead

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta &#x60;leadgen_id&#x60;. | [optional] |
| **created_time** | **Time** |  | [optional] |
| **ad_id** | **String** | Meta ad ID that surfaced the form. Organic leads omit this. | [optional] |
| **form_id** | **String** |  | [optional] |
| **fields** | **Hash&lt;String, String&gt;** | Flattened key→value map of answers (multi-value fields joined with \&quot;, \&quot;). | [optional] |
| **field_data** | [**Array&lt;LeadFieldDataInner&gt;**](LeadFieldDataInner.md) | Raw &#x60;field_data&#x60; from Meta (one entry per question). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Lead.new(
  id: null,
  created_time: null,
  ad_id: null,
  form_id: null,
  fields: null,
  field_data: null
)
```

