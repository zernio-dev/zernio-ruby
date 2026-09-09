# Zernio::GetAdNegativeKeywordList200ResponseList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Google shared set id. | [optional] |
| **resource_name** | **String** | Google shared set resource name. | [optional] |
| **name** | **String** | List name. | [optional] |
| **member_count** | **Integer** | Number of keywords in the list. | [optional] |
| **reference_count** | **Integer** | Number of resources referencing the list. | [optional] |
| **keywords** | [**Array&lt;AdNegativeKeywordListKeyword&gt;**](AdNegativeKeywordListKeyword.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdNegativeKeywordList200ResponseList.new(
  id: null,
  resource_name: null,
  name: null,
  member_count: null,
  reference_count: null,
  keywords: null
)
```

