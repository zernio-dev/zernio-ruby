# Zernio::GetSubredditRules200ResponseRulesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | Scope of the rule: &#39;link&#39;, &#39;comment&#39;, or &#39;all&#39; | [optional] |
| **short_name** | **String** | Short rule title shown in the subreddit sidebar | [optional] |
| **description** | **String** | Full rule text | [optional] |
| **violation_reason** | **String** | Reason shown to a user when the rule is enforced | [optional] |
| **created_utc** | **Float** | Unix timestamp when the rule was created | [optional] |
| **priority** | **Integer** | Display order of the rule | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSubredditRules200ResponseRulesInner.new(
  kind: null,
  short_name: null,
  description: null,
  violation_reason: null,
  created_utc: null,
  priority: null
)
```

