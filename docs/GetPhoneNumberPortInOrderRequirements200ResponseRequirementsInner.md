# Zernio::GetPhoneNumberPortInOrderRequirements200ResponseRequirementsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **example** | **String** |  | [optional] |
| **acceptable_values** | **Array&lt;String&gt;** |  | [optional] |
| **status** | **String** | requirement-info-pending | requirement-info-under-review | requirement-info-exception | approved | [optional] |
| **filled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberPortInOrderRequirements200ResponseRequirementsInner.new(
  requirement_id: null,
  label: null,
  kind: null,
  description: null,
  example: null,
  acceptable_values: null,
  status: null,
  filled: null
)
```

