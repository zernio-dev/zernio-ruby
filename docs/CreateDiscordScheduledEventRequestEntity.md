# Zernio::CreateDiscordScheduledEventRequestEntity

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateDiscordScheduledEventRequestEntity.openapi_one_of
# =>
# [
#   :'CreateDiscordScheduledEventRequestEntityOneOf',
#   :'CreateDiscordScheduledEventRequestEntityOneOf1',
#   :'CreateDiscordScheduledEventRequestEntityOneOf2'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateDiscordScheduledEventRequestEntity.build(data)
# => #<CreateDiscordScheduledEventRequestEntityOneOf:0x00007fdd4aab02a0>

Zernio::CreateDiscordScheduledEventRequestEntity.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreateDiscordScheduledEventRequestEntityOneOf`
- `CreateDiscordScheduledEventRequestEntityOneOf1`
- `CreateDiscordScheduledEventRequestEntityOneOf2`
- `nil` (if no type matches)

