# Zernio::BulkUploadResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Number of data rows processed from the CSV | [optional] |
| **valid** | **Integer** | Count of rows that succeeded (results[].ok &#x3D;&#x3D;&#x3D; true) | [optional] |
| **invalid** | **Integer** | Count of rows that failed (total - valid) | [optional] |
| **results** | [**Array&lt;BulkUploadResultResultsInner&gt;**](BulkUploadResultResultsInner.md) | One entry per CSV data row, in row order. | [optional] |
| **warnings** | **Array&lt;String&gt;** | Top-level advisory warnings (e.g. &#x60;rows_exceed_advisory_limit:500&#x60;). Empty when none. | [optional] |
| **rate_limited_accounts** | [**Array&lt;BulkUploadResultRateLimitedAccountsInner&gt;**](BulkUploadResultRateLimitedAccountsInner.md) | Present only when one or more rows targeted an account currently in cooldown. Lets callers map &#x60;rate_limited:*&#x60; row errors back to structured metadata without parsing the error strings.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkUploadResult.new(
  total: null,
  valid: null,
  invalid: null,
  results: null,
  warnings: null,
  rate_limited_accounts: null
)
```

