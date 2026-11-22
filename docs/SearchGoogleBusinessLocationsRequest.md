# Zernio::SearchGoogleBusinessLocationsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Free-text search (business name and address). Mutually exclusive with location. | [optional] |
| **location** | [**SearchGoogleBusinessLocationsRequestLocation**](SearchGoogleBusinessLocationsRequestLocation.md) |  | [optional] |
| **page_size** | **Integer** | Maximum matches to return. Google defaults to 3. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchGoogleBusinessLocationsRequest.new(
  query: null,
  location: null,
  page_size: null
)
```

