# Zernio::GetGoogleBusinessSearchKeywords200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **month_range** | [**GetGoogleBusinessSearchKeywords200ResponseMonthRange**](GetGoogleBusinessSearchKeywords200ResponseMonthRange.md) |  | [optional] |
| **keywords** | [**Array&lt;GetGoogleBusinessSearchKeywords200ResponseKeywordsInner&gt;**](GetGoogleBusinessSearchKeywords200ResponseKeywordsInner.md) |  | [optional] |
| **next_page_token** | **String** | Pass as pageToken to fetch the next page. null on the last page. | [optional] |
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
  next_page_token: null,
  note: Keywords Google reports only as below a threshold have impressions 0 and impressionsThreshold set
)
```

