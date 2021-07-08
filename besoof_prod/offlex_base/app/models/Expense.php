<?php

class Expense extends EntityModel
{
    public function getEntityType()
    {
        return ENTITY_EXPENSE;
    }
    
    public function getFilePath()
    {
    	return $this->path . '/' .  $this->file_name;
    }
    
}