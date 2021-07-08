<?php

class Quarter extends EntityModel
{
    public static function findQuarterByKey($key)
    {
        return Quarter::scope()->where('public_id', '=', $key)->first();
    }
}
