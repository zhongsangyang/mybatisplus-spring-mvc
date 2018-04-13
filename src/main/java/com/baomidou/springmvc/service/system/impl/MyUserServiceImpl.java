package com.baomidou.springmvc.service.system.impl;

import com.baomidou.springmvc.model.system.MyUser;
import com.baomidou.springmvc.mapper.system.MyUserMapper;
import com.baomidou.springmvc.service.system.IMyUserService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 后台用户表 服务实现类
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-09
 */
@Service
public class MyUserServiceImpl extends ServiceImpl<MyUserMapper, MyUser> implements IMyUserService {

}
