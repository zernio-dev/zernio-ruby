# Zernio::EmailListMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filtered_client_side** | **Array&lt;String&gt;** | The filters the provider could not apply server-side, so they were applied to the fetched page (Microsoft: &#x60;bcc&#x60;, &#x60;anyEmail&#x60;, and every other filter when &#x60;searchQueryNative&#x60; is set). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailListMeta.new(
  filtered_client_side: null
)
```

