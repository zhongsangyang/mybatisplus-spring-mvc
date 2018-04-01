package com.baomidou.springmvc.service.system.impl;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.springmvc.model.system.LoggingEvent;
import com.baomidou.springmvc.mapper.system.LoggingEventMapper;
import com.baomidou.springmvc.service.system.LoggingEventService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-07
 */
@Service
public class LoggingEventServiceImpl extends ServiceImpl<LoggingEventMapper, LoggingEvent> implements LoggingEventService {


    @Override
    public List<LoggingEvent> selectMyPage(RowBounds rowBounds, Wrapper<LoggingEvent> wrapper) {
        return baseMapper.selectMyPage(rowBounds,wrapper);
    }
}
