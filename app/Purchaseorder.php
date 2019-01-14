<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Auditable;
use OwenIt\Auditing\Contracts\Auditable as AuditableContract;

class Purchaseorder extends Model implements AuditableContract
{
    //
    use Auditable;
    protected $primaryKey = 'purchaseordernumber';
    
    public $incrementing = false;
    
    protected $fillable=['purchaseordernumber','supplier_id','date','expecteddeliverydate','subtotal','discount'];

    public function purchaseorderitems()
    {
        return $this->hasMany('App\Purchaseorderitem', 'purchaseordernumber', 'purchaseordernumber');
    }
}
