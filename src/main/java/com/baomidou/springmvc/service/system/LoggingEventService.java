package com.baomidou.springmvc.service.system;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.springmvc.model.system.LoggingEvent;
import com.baomidou.mybatisplus.service.IService;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-07
 */
public interface LoggingEventService extends IService<LoggingEvent> {
    List<LoggingEvent> selectMyPage(RowBounds rowBounds,@Param("ew") Wrapper<LoggingEvent> wrapper);

}
