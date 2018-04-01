package com.baomidou.springmvc.mapper.system;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.springmvc.model.system.LoggingEvent;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-07
 */
public interface LoggingEventMapper extends BaseMapper<LoggingEvent> {
    List<LoggingEvent> selectMyPage(RowBounds rowBounds, @Param("ew") Wrapper<LoggingEvent> wrapper);
}
