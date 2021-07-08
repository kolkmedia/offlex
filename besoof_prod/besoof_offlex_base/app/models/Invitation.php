<?php
class Invitation extends EntityModel
{
    public function invoice()
    {
        return $this->belongsTo('Invoice')->withTrashed();
    }

    public function contact()
    {
        return $this->belongsTo('Contact')->withTrashed();
    }

    public function user()
    {
        return $this->belongsTo('User')->withTrashed();
    }

    public function account()
    {
        return $this->belongsTo('Account');
    }

    public function getLink()
    {
//        return SITE_URL.'/view/'.$this->invitation_key;

        if (!$this->account) {
            $this->load('account');
        }

        $url = SITE_URL;
        $iframe_url = $this->account->iframe_url;

        if ($iframe_url) {
            return "{$iframe_url}/?{$this->invitation_key}";
        } else if ($this->account->subdomain) {
            $url = Utils::replaceSubdomain($url, $this->account->subdomain);
        }

        return "{$url}/view/{$this->invitation_key}";


    }
    public function getName()
    {
        return $this->invitation_key;
    }
}
