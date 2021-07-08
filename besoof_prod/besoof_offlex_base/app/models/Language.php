<?php

class Language extends Eloquent
{
    public $timestamps = false;
    protected $softDelete = false;

    public function getName()
    {
        return $this->name;
    }
}
