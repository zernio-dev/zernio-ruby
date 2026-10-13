# Zernio::SupportRunDiagnosis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | What kind of problem the answer describes. New values may be added: treat any value you do not recognize as &#x60;other&#x60;. |  |
| **cause** | **String** | The cause the answer gives, in one sentence. Null when the answer reports no problem, for example a how-to question. |  |
| **fix_steps** | **Array&lt;String&gt;** | The steps the answer recommends, in order. Empty when it recommends none. |  |
| **docs_links** | **Array&lt;String&gt;** | Links to docs.zernio.com that the answer itself cites. Empty when it cites none. |  |
| **who_must_act** | **String** | Who has to act to resolve it: you (&#x60;integrator&#x60;), your end user, Zernio, the social platform, or nobody. New values may be added: treat any value you do not recognize as &#x60;none&#x60;. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SupportRunDiagnosis.new(
  category: null,
  cause: null,
  fix_steps: null,
  docs_links: null,
  who_must_act: null
)
```

