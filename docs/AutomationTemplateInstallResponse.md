# Zernio::AutomationTemplateInstallResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationTemplateInstallResponse.openapi_one_of
# =>
# [
#   :'OneInstall',
#   :'SeveralTargets'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationTemplateInstallResponse.build(data)
# => #<OneInstall:0x00007fdd4aab02a0>

Zernio::AutomationTemplateInstallResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `OneInstall`
- `SeveralTargets`
- `nil` (if no type matches)

