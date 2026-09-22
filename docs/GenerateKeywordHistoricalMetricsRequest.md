# Zernio::GenerateKeywordHistoricalMetricsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio googleads SocialAccount id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **keywords** | **Array&lt;String&gt;** |  |  |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes. Omitted &#x3D; worldwide. | [optional] |
| **language_constant_id** | **String** | Google languageConstant id (1000 &#x3D; English). | [optional][default to &#39;1000&#39;] |
| **network** | **String** |  | [optional][default to &#39;GOOGLE_SEARCH&#39;] |
| **include_adult_keywords** | **Boolean** |  | [optional] |
| **include_average_cpc** | **Boolean** | Adds averageCpcMicros to each row&#39;s keywordMetrics. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GenerateKeywordHistoricalMetricsRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  keywords: null,
  countries: null,
  language_constant_id: null,
  network: null,
  include_adult_keywords: null,
  include_average_cpc: null
)
```

