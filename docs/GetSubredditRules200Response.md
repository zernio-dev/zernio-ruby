# Zernio::GetSubredditRules200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;GetSubredditRules200ResponseRulesInner&gt;**](GetSubredditRules200ResponseRulesInner.md) |  | [optional] |
| **site_rules** | **Array&lt;String&gt;** | Reddit&#39;s site-wide content policy rules | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSubredditRules200Response.new(
  rules: null,
  site_rules: null
)
```

