package com.baomidou.springmvc.controller;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.springmvc.model.system.LoggingEvent;
import com.baomidou.springmvc.service.system.LoggingEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-07
 */
@Controller
@RequestMapping("/loggingEvent")
public class LoggingEventController {
    @Autowired
    private LoggingEventService loggingEventService;
    @RequestMapping("/log/detail")
    @ResponseBody
    public Page<LoggingEvent> logList(){
       Page<LoggingEvent> pageList=  loggingEventService.selectPage(new Page<LoggingEvent>(1,30),
               new EntityWrapper<LoggingEvent>()
                       .like("caller_method","info"));

        return pageList;
    }

}

