# Zernio::GetGoogleAnalyticsMetadata200ResponseMetricsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_name** | **String** |  | [optional] |
| **ui_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **custom_definition** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleAnalyticsMetadata200ResponseMetricsInner.new(
  api_name: sessions,
  ui_name: Sessions,
  description: null,
  type: TYPE_INTEGER,
  category: null,
  custom_definition: null
)
```

