# Zernio::CalendarEventParticipantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **comment** | **String** |  | [optional] |
| **optional** | **Boolean** | The guest may skip the event. | [optional] |
| **resource** | **Boolean** | A room or equipment address. | [optional] |
| **_self** | **Boolean** | This guest is the connected mailbox. | [optional] |
| **organizer** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarEventParticipantsInner.new(
  email: null,
  name: null,
  status: null,
  comment: null,
  optional: null,
  resource: null,
  _self: null,
  organizer: null
)
```

