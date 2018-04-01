package com.baomidou.springmvc.mapper.system;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.springmvc.model.system.Shop;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * <p>
 * 系统商品表 Mapper 接口
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-08
 */
public interface ShopMapper extends BaseMapper<Shop> {
    List<Shop> selectMyList(RowBounds rowBounds,@Param("ew") Wrapper<Shop> wrapper);

}
