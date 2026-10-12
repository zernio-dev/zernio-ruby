# Zernio::GetAdReview200ResponseReviewReviewFeedback

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **global** | **Hash&lt;String, String&gt;** | Meta &#x60;global&#x60;: policy or reason -&gt; Meta&#39;s explanation. | [optional] |
| **placement_specific** | **Hash&lt;String, Hash&lt;String, String&gt;&gt;** | Meta &#x60;placement_specific&#x60;: placement (facebook, instagram, ...) -&gt; reason -&gt; Meta&#39;s explanation. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200ResponseReviewReviewFeedback.new(
  global: null,
  placement_specific: null
)
```

