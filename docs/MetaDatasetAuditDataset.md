# Zernio::MetaDatasetAuditDataset

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **last_fired_at** | **Time** |  |  |
| **automatic_matching** | **Boolean** | Automatic advanced matching on the browser pixel. |  |
| **automatic_matching_keys** | **Array&lt;String&gt;** | The keys automatic matching collects, as Meta names them (em, ph, fn). |  |
| **first_party_cookies** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaDatasetAuditDataset.new(
  id: null,
  name: null,
  last_fired_at: null,
  automatic_matching: null,
  automatic_matching_keys: null,
  first_party_cookies: null
)
```

