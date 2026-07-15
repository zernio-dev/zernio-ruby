# Zernio::CreatePinterestBoardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the board |  |
| **description** | **String** | Board description | [optional] |
| **privacy** | **String** | Board privacy setting | [optional][default to &#39;PUBLIC&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePinterestBoardRequest.new(
  name: null,
  description: null,
  privacy: null
)
```

