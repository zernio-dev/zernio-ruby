# Zernio::GetAutomationCatalog200ResponseTriggersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** |  |  |
| **type** | **String** | &#x60;schedule&#x60;, &#x60;enrollment&#x60;, a comment door such as &#x60;comment.keyword&#x60; (comment to DM), a flow trigger such as &#x60;inbound_message&#x60;, or the Zernio event name. |  |
| **label** | **String** | Event triggers only. | [optional] |
| **subject** | **String** | What an event is about, such as &#x60;post&#x60; or &#x60;account&#x60;. | [optional] |
| **scope** | **Object** | Which of &#x60;profileId&#x60;, &#x60;accountId&#x60;, &#x60;accountIds&#x60; and &#x60;platformPostId&#x60; the trigger needs. | [optional] |
| **platforms** | **Array&lt;String&gt;** | The platforms a sequence, comment to DM or flow trigger runs on. | [optional] |
| **facts** | [**Array&lt;GetAutomationCatalog200ResponseTriggersInnerFactsInner&gt;**](GetAutomationCatalog200ResponseTriggersInnerFactsInner.md) | The facts a &#x60;filter&#x60; can compare, for an event trigger. | [optional] |
| **subjects** | **Array&lt;Object&gt;** | Scheduled trigger only: what it can check (&#x60;post&#x60;), with the facts of each. | [optional] |
| **every** | **Array&lt;String&gt;** |  | [optional] |
| **times** | **Object** | Ad rule trigger only: the weekly set times it takes. | [optional] |
| **filter_operators** | **Array&lt;String&gt;** |  | [optional] |
| **steps** | **Array&lt;String&gt;** | The step types the trigger takes. For an event, only those its subject can reach. | [optional] |
| **boost** | **Object** | Scheduled trigger only: the platforms, goals, most days and most boosts a day of &#x60;ads.boost_post&#x60;. | [optional] |
| **limits** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAutomationCatalog200ResponseTriggersInner.new(
  kind: null,
  type: post.failed,
  label: null,
  subject: null,
  scope: null,
  platforms: null,
  facts: null,
  subjects: null,
  every: null,
  times: null,
  filter_operators: null,
  steps: null,
  boost: null,
  limits: null
)
```

