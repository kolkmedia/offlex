<?php

class InvoiceDesign extends Eloquent
{
    public $timestamps = false;

    public static function getDesigns($designs)
    {
        $account = Auth::user()->account;

        foreach ($designs as $design) {
            if ($design->id > Auth::user()->maxInvoiceDesignId()) {
                $designs->get($design->id);
            }


            $design->javascript = $design->pdfmake;
            $design->pdfmake = null;

            if ($design->id == CUSTOM_DESIGN) {
                if ($account->custom_design) {
                    $design->javascript = $account->custom_design;
                } else {
                    $designs->pop();
                }
            }
        }

        return $designs;
    }
}
