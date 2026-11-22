# Zernio::AutomationTemplateContentFrom

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationTemplateContentFrom.openapi_one_of
# =>
# [
#   :'FromASharedTemplate',
#   :'FromAZernioTemplate',
#   :'FromYourAutomations'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationTemplateContentFrom.build(data)
# => #<FromASharedTemplate:0x00007fdd4aab02a0>

Zernio::AutomationTemplateContentFrom.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `FromASharedTemplate`
- `FromAZernioTemplate`
- `FromYourAutomations`
- `nil` (if no type matches)

