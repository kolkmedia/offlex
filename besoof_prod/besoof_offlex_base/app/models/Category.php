<?php

class Category extends EntityModel
{
    public static function findCategoryByKey($key)
    {
        return Category::scope()->where('public_id', '=', $key)->first();
    }
}
