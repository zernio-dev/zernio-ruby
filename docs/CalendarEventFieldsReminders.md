# Zernio::CalendarEventFieldsReminders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **use_default** | **Boolean** | Use the calendar&#39;s default reminders. Ignored when &#x60;overrides&#x60; has entries. | [optional] |
| **overrides** | [**Array&lt;CalendarEventFieldsRemindersOverridesInner&gt;**](CalendarEventFieldsRemindersOverridesInner.md) | Google takes up to 5 overrides, &#x60;popup&#x60; or &#x60;email&#x60;. Outlook keeps one popup reminder (the first override), and an &#x60;email&#x60; override answers 400 &#x60;reminder_method_unsupported&#x60; on a Microsoft account. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CalendarEventFieldsReminders.new(
  use_default: null,
  overrides: null
)
```

