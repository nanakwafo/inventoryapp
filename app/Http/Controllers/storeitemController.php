<?php

namespace App\Http\Controllers;

use App\Storeitem;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Yajra\Datatables\Datatables;
use DB;
class storeitemController extends Controller
{
    public function index(){
        return view('storeitem');
    }
    public function getstoreitemData()
    {
        $storeitems = Storeitem::all();
        $data  = [];
        foreach ($storeitems as $w) {
            $obj = new \stdClass;
            $obj->id = $w->id;
            $obj->goodissue_addnumber = $w->goodissue_addnumber;
            $obj->warehousenamefrom = Warehouse::find($w->warehouse_issue_from)->name;
            $obj->storeissueto = Warehouse::find($w->store_issue_to)->name;
            $obj->product = Productcode::find($w->productcode)->name;
            $obj->productcategory = Productcategory::find($w->productcategory_id)->name;
            $obj->description = $w->description;
            $obj->quantity = $w->quantity;
            $data[] = $obj;
        }
        $storeitems_sorted = new Collection($data);
        
        return Datatables::of($storeitems_sorted)->make(true);
    }
}
