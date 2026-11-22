# Zernio::AutomationRecordTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **version** | **Integer** | The template version it was installed from. |  |
| **latest_version** | **Integer** | Null once the template is deleted. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationRecordTemplate.new(
  id: null,
  name: null,
  version: null,
  latest_version: null
)
```

