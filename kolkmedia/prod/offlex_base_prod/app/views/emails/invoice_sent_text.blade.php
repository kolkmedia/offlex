{{ trans('texts.email_salutation', ['name' => $userName]) }}

{{ trans("texts.notification_{$entityType}_sent", ['amount' => $invoiceAmount, 'client' => $clientName, 'invoice' => $invoiceNumber]) }}

{{ trans('texts.email_signature') }}
{{ trans('texts.email_from') }}

{{ trans('texts.user_email_footer') }}