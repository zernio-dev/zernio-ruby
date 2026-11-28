# Zernio::MetaSavedAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta saved audience id. | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **approximate_count_lower_bound** | **Integer** | Meta&#39;s estimated lower bound on reach. | [optional] |
| **approximate_count_upper_bound** | **Integer** | Meta&#39;s estimated upper bound on reach. | [optional] |
| **run_status** | **String** | Meta&#39;s run_status: whether the saved audience is active or deleted. | [optional] |
| **sentence_lines** | **Array&lt;Object&gt;** | Meta&#39;s human-readable targeting summary lines, passed through as Meta returns them. | [optional] |
| **targeting** | **Hash&lt;String, Object&gt;** | The Meta targeting spec saved in the audience, in Meta&#39;s own snake_case shape. Send it as &#x60;rawTargeting&#x60; on &#x60;POST /v1/ads/create&#x60; to target an ad set at this audience. | [optional] |
| **created_at** | **String** | Meta&#39;s time_created. | [optional] |
| **updated_at** | **String** | Meta&#39;s time_updated. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaSavedAudience.new(
  id: null,
  name: null,
  description: null,
  approximate_count_lower_bound: null,
  approximate_count_upper_bound: null,
  run_status: null,
  sentence_lines: null,
  targeting: null,
  created_at: null,
  updated_at: null
)
```

