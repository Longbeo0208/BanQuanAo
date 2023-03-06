<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;    
session_start();

class HomeController extends Controller
{
    public function index(Request $request){

        // //seo
        // $meta_desc = "chuyên bán những phụ kiện";
        // $meta_keywords = "thực phẩm chức năng";
        // $meta_title = "Thực phẩm bổ sung ";
        // $url_canonical = $request->url();
        // //seo

        $cate_product  = DB::table('tb_category_product')->where('category_status','0')->orderby('category_id','desc')->get();
        $brand_product = DB::table('tb_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();

        // $all_product = DB::table('tb_product')
        // ->join('tb_category_product','tb_category_product.category_id','=','tb_product.category_id')
        // ->join('tb_brand','tb_brand.brand_id','=','tb_product.brand_id')
        // ->orderby('tb_product.product_id','desc')->get();

        $all_product =DB::table('tb_product')->where('product_status','0')->orderby('product_id','desc')->limit(8)->get();

        return view('pages.home')->with('category',$cate_product)->with('brand',$brand_product)->with('all_product',$all_product); //1

        
    }

    public function search(Request $request){

        // //seo
        // $meta_desc = "Tìm kiếm sản phẩm";
        // $meta_keywords = "Tìm kiếm sản phẩm";
        // $meta_title = "Tìm kiếm sản phẩm";
        // $url_canonical = $request->url();
        // //--seo

        $keywords = $request->keywords_submit;
        
        $cate_product  = DB::table('tb_category_product')->where('category_status','0')->orderby('category_id','desc')->get();

        $brand_product = DB::table('tb_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();

     
        // $all_product = DB::table('tb_product')
        // ->join('tb_category_product','tb_category_product.category_id','=','tb_product.category_id')
        // ->join('tb_brand','tb_brand.brand_id','=','tb_product.brand_id')
        // ->orderby('tb_product.product_id','desc')->get();

        $search_product = DB::table('tb_product')->where('product_name','like','%'.$keywords.'%')->get();

        return view('pages.sanpham.search')->with('category',$cate_product)->with('brand',$brand_product)
        ->with('search_product',$search_product);

    }
    public function contact_layout(Request $request){
        $cate_product  = DB::table('tb_category_product')->where('category_status','0')->orderby('category_id','desc')->get();

        $brand_product = DB::table('tb_brand')->where('brand_status','0')->orderby('brand_id','desc')->get();
        return view('pages.contact.contact_layout')->with('category',$cate_product)->with('brand',$brand_product);
    }
}
