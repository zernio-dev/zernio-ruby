# Zernio::CalendarEventFieldsRemindersOverridesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | &#x60;popup&#x60; shows a notification in the calendar app. &#x60;email&#x60; mails the calendar owner (Google only). | [optional][default to &#39;popup&#39;] |
| **minutes** | **Integer** | Minutes before the start. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarEventFieldsRemindersOverridesInner.new(
  method: null,
  minutes: null
)
```

