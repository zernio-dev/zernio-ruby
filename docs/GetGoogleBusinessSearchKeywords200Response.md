# Zernio::GetGoogleBusinessSearchKeywords200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **month_range** | [**GetGoogleBusinessSearchKeywords200ResponseMonthRange**](GetGoogleBusinessSearchKeywords200ResponseMonthRange.md) |  | [optional] |
| **keywords** | [**Array&lt;GetGoogleBusinessSearchKeywords200ResponseKeywordsInner&gt;**](GetGoogleBusinessSearchKeywords200ResponseKeywordsInner.md) |  | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessSearchKeywords200Response.new(
  success: true,
  account_id: null,
  platform: googlebusiness,
  month_range: null,
  keywords: null,
  note: Keywords below a minimum impression threshold are excluded by Google
)
```

