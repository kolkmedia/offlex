<?php

class Document extends EntityModel
{
    public function getEntityType()
    {
        return ENTITY_DOCUMENT;
    }
    
    public function getFilePath()
    {
    	return $this->path . '/' .  $this->file_name;
    }
    
}