package com.baomidou.springmvc.service.system.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.springmvc.model.system.Shop;
import com.baomidou.springmvc.mapper.system.ShopMapper;
import com.baomidou.springmvc.service.system.ShopService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 系统商品表 服务实现类
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-08
 */
@Service
public class ShopServiceImpl extends ServiceImpl<ShopMapper, Shop> implements ShopService {

    @Override
    public List<Shop> selectMyList(RowBounds rowBounds, Wrapper<Shop> wrapper) {
        return baseMapper.selectMyList(rowBounds,wrapper);
    }
}
