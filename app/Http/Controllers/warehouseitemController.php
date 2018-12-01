<?php

namespace App\Http\Controllers;

use App\Product;
use App\Productcategory;
use App\Productcode;
use App\Supplier;
use App\Warehouse;
use App\Warehouseitem;
use Illuminate\Http\Request;
use Illuminate\Support\Collection;
use Yajra\Datatables\Datatables;
use DB;
class warehouseitemController extends Controller
{
    //
    public function index(){
        return view('warehouseitem');

    }
    public function getwarehouseitemData()
    {
        $warehouseitems = Warehouseitem::all();
        $data  = [];
        foreach ($warehouseitems as $w) {
            $obj = new \stdClass;
            $obj->id = $w->id;
            $obj->goodreceive_grnnumber = $w->goodreceive_grnnumber;
            $obj->warehousename = Warehouse::find($w->warehouse_id)->name;
            $obj->suppliername = Supplier::find($w->supplier_id)->name;
            $obj->product = Productcode::find($w->productcode)->name;
            $obj->productcategory = Productcategory::find($w->productcategory_id)->name;
            $obj->description = $w->description;
            $obj->quantity = $w->quantity;
            $data[] = $obj;
        }
        $warehouseitems_sorted = new Collection($data);

        return Datatables::of($warehouseitems_sorted)->make(true);
    }
}
