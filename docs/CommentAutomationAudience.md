# Zernio::CommentAutomationAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **follower_status** | **String** |  | [optional][default to &#39;any&#39;] |
| **min_follower_count** | **Integer** | Skip commenters with fewer followers than this. Omit for no size rule. | [optional] |
| **when_unknown** | **String** | What to do when Instagram will not reveal the follow relationship.   * &#x60;send&#x60; (default) - deliver the DM anyway (fails open).   * &#x60;skip&#x60; - stay silent.   * &#x60;verify&#x60; - send &#x60;followGate.message&#x60; with a confirm button. Tapping it is a     message, which grants consent, so the re-check on the tap resolves and the     real DM (or &#x60;followGate.notFollowingMessage&#x60;) follows automatically.  | [optional][default to &#39;send&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationAudience.new(
  follower_status: null,
  min_follower_count: null,
  when_unknown: null
)
```

