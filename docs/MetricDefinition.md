# Zernio::MetricDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **unit** | **String** | ratio is a plain ratio (0 to 1 for a rate); money is in the account currency, or the unit and currency meta.units gives; position is a rank where 1 is the top; score runs from 0 to 100. |  |
| **additive** | **Boolean** |  |  |
| **source** | **String** | stored: read from what Zernio synced; live: read from the platform on each request. |  |
| **platforms** | **Array&lt;String&gt;** |  |  |
| **freshness** | **String** |  |  |
| **granularities** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetricDefinition.new(
  name: null,
  description: null,
  unit: null,
  additive: null,
  source: null,
  platforms: null,
  freshness: null,
  granularities: null
)
```

