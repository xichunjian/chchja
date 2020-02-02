<?php

namespace JianGoods\shopping;

use think\Exception;
use think\facade\Cookie;
use think\facade\Db;

/**
 * 购物车
 * Class Shopping
 * @package JianGood
 */

class Shopping
{
    private $table; //购物车表名

    /**
     * 构造方法
     * Shopping constructor.
     * @param string $table
     */
    public function __construct(string $table)
    {
        $this->table= $table; // 数据库名称
    }

    /**
     * 用户不登陆时，添加商品 到购物车暂时保存到 cookie内
     * @param array $userGoodsDate
     */
    public function setCookie(array $userGoodsDate) : void
    {
        //检测事是否是数组
        if(is_numeric($userGoodsDate)){
            //检测是否存在
            if( Cookie::has('userGoodsDate')){
                //数据存在增加数量不添加新的数据
                Cookie::set('userGoodsDate', Cookie::get(['userGoodsDate'])['num']+$userGoodsDate['num']);
            }
        }

    }

    /**
     * 添加购物车商品
     *
     * @param [type] $userGoodsDate 购物车数据
     * @param [type] $user_id  用户id
     * @return void
     */
    public function setShopping(array $userGoodsDate,int $user_id)
    {
        //检测数据是否存在
        $where = [
            'buyer_id'=>$user_id,
            'goods_id'=>$userGoodsDate['goods_id'],
            'sku_id'=>$userGoodsDate['sku_id']
        ];
        $field = 'cart_id,buyer_id,goods_id,sku_id,sku_name,num';
        $cart = $this->tableDb($where,$field)->find();
        try{
            if(empty($cart))
            {
                //检测到没有商品 添加入库
                Db::name($this->table)->insert($userGoodsDate);
            }else{
                //检测到商品 修改商品的购买数量
                $where=['id'=>$cart['cart_id']];
                $this->upShop($where,$userGoodsDate['num']);
            }
        }catch(Exception $e){
            throw new Exception($e->getMessage());
        }
        return true;

    }

    /**
     * 修改商品数量
     * @param $where
     * @param $num
     * @return bool
     */
    public function upShop($where,int $num)
    {
        try{
            //如果是数字 就直接修改
            if(is_numeric($where)) {
                $wheres = ['cart_id'=>$where];
            }else{
                $wheres =$where;
            }
            //6.0版本修改成 inc("num",$userGoodsDate['num'])
            Db::name($this->table)->where($wheres)->inc("num",$num);
        }catch(Exception $e){
            throw new Exception($e->getMessage());
        }
        return true;
    }

    /**
     * 删除购物车商品
     * @param $where
     * @return bool
     */
    public function delShop($where)
    {
        try {
            Db::name($this->table)->where($where)->delete();
        }catch(Exception $e){
            throw new Exception($e->getMessage());
        }
        return true;
    }

    /**
     * 查询一条数据
     *
     * @param [type] $where
     * @param string $field
     * @return void
     */
    private function tableDb($where,$field='*')
    {
        $data = Db::name($this->table)
            ->where($where)
            ->field($field)
            ->find();
        return $data;
    }

}