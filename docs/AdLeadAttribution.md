# Zernio::AdLeadAttribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **click_ids** | **Hash&lt;String, String&gt;** | Ad click and browser ids of the visit (&#x60;fbc&#x60;, &#x60;fbp&#x60;, &#x60;gclid&#x60;, &#x60;ttclid&#x60;, ...). | [optional] |
| **utm** | **Hash&lt;String, String&gt;** |  | [optional] |
| **visitor_id** | **String** | The Zernio tag visitor id (&#x60;_zid&#x60;). | [optional] |
| **source_url** | **String** | The page the form was submitted on. | [optional] |
| **site_id** | **String** | The tracked website, for a website form lead. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdLeadAttribution.new(
  click_ids: null,
  utm: null,
  visitor_id: null,
  source_url: null,
  site_id: null
)
```

