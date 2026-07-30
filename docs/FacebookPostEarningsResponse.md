# Zernio::FacebookPostEarningsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **post_id** | **String** | The platform post ID that was queried, echoed back. | [optional] |
| **platform** | **String** |  | [optional] |
| **period** | **String** | Always \&quot;lifetime\&quot;: the total is cumulative since publication and must not be summed across dates or across posts.  | [optional] |
| **metrics** | [**Hash&lt;String, FacebookPostEarningsResponseMetricsValue&gt;**](FacebookPostEarningsResponseMetricsValue.md) | One entry per served metric. A metric reported here with \&quot;total\&quot;: 0 genuinely earned nothing (or its Page is not enrolled, which Meta reports identically).  | [optional] |
| **unavailable_metrics** | [**Array&lt;FacebookPostEarningsResponseUnavailableMetricsInner&gt;**](FacebookPostEarningsResponseUnavailableMetricsInner.md) | Requested metrics Meta could not serve. Present only when at least one metric is unavailable, and absent otherwise. Each listed metric is OMITTED from \&quot;metrics\&quot; rather than reported as 0. The request itself still succeeds with HTTP 200.  | [optional] |
| **data_delay** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FacebookPostEarningsResponse.new(
  success: true,
  account_id: 64e1a2b3c4d5e6f7a8b9c0d1,
  post_id: 123456789_987654321,
  platform: facebook,
  period: null,
  metrics: null,
  unavailable_metrics: null,
  data_delay: null
)
```

