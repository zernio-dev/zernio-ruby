# Zernio::ImapDiscovery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **route** | **String** |  | [optional] |
| **provider** | [**ImapDiscoveryProvider**](ImapDiscoveryProvider.md) |  | [optional] |
| **source** | **String** |  | [optional] |
| **confidence** | **String** | low when only a probe answered: show the settings for the user to check. | [optional] |
| **imap** | [**ImapDiscoveryImap**](ImapDiscoveryImap.md) |  | [optional] |
| **smtp** | [**ImapDiscoverySmtp**](ImapDiscoverySmtp.md) |  | [optional] |
| **auth** | [**ImapDiscoveryAuth**](ImapDiscoveryAuth.md) |  | [optional] |
| **preflight** | [**Array&lt;ImapDiscoveryPreflightInner&gt;**](ImapDiscoveryPreflightInner.md) | What to switch on at the provider first, such as IMAP access on GMX or Yandex. | [optional] |
| **host_replacements** | [**Array&lt;ImapDiscoveryHostReplacementsInner&gt;**](ImapDiscoveryHostReplacementsInner.md) | Server names discovery swapped for the name the server certificate is issued for, as on shared hosting where mail.&lt;domain&gt; has no certificate of its own. Present on the imap route. | [optional] |
| **reconnect_cause** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **unsupported_reason** | **String** | Why an &#x60;unsupported&#x60; route cannot connect:  - &#x60;proton_requires_bridge&#x60;: Proton Mail only works through its local bridge. - &#x60;forwarding_only&#x60;: the domain forwards mail (Cloudflare Email Routing) and stores none, so connect the mailbox it forwards to. - &#x60;domain_typo&#x60;: the domain takes no mail and looks like a mistyped consumer domain. &#x60;suggestedEmail&#x60; has the likely address. - &#x60;no_mail_domain&#x60;: the domain has no MX and no address, so it cannot receive email.  | [optional] |
| **suggested_email** | **String** | With unsupportedReason domain_typo: the address the user most likely meant, such as ana7275@gmail.com for ana@7275gmail.com. Run discovery again with it once the user confirms. | [optional] |
| **app_password_fallback** | **Object** | Google only: Gmail over IMAP with an app password, for accounts whose admin blocks Google sign-in for other apps. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapDiscovery.new(
  email: null,
  route: null,
  provider: null,
  source: null,
  confidence: null,
  imap: null,
  smtp: null,
  auth: null,
  preflight: null,
  host_replacements: null,
  reconnect_cause: null,
  reason: null,
  unsupported_reason: null,
  suggested_email: null,
  app_password_fallback: null
)
```

