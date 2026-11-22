# Zernio::StartGohighlevelAudienceSync201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync** | [**GohighlevelAudienceSync**](GohighlevelAudienceSync.md) |  | [optional] |
| **failed_targets** | **Array&lt;String&gt;** | The ad accounts that refused an audience, as &#x60;&lt;connection label&gt; · &lt;adAccountId&gt;&#x60;. The sync runs on the others. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartGohighlevelAudienceSync201Response.new(
  sync: null,
  failed_targets: null
)
```

