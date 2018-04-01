package com.baomidou.springmvc.model.system;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-07
 */
@TableName("logging_event")
public class LoggingEvent implements Serializable {

    private static final long serialVersionUID = 1L;

    private String timestmp;
    @TableField("formatted_message")
    private String formattedMessage;
    @TableField("logger_name")
    private String loggerName;
    @TableField("level_string")
    private String levelString;
    @TableField("thread_name")
    private String threadName;
    @TableField("reference_flag")
    private Integer referenceFlag;
    @TableField("caller_filename")
    private String callerFilename;
    private String arg0;
    private String arg1;
    private String arg2;
    private String arg3;
    @TableField("caller_class")
    private String callerClass;
    @TableField("caller_method")
    private String callerMethod;
    @TableField("caller_line")
    private String callerLine;
    @TableId(value = "event_id", type = IdType.AUTO)
    private Integer eventId;


    public String getTimestmp() {
        return timestmp;
    }

    public void setTimestmp(String timestmp) {
        this.timestmp = timestmp;
    }

    public String getFormattedMessage() {
        return formattedMessage;
    }

    public void setFormattedMessage(String formattedMessage) {
        this.formattedMessage = formattedMessage;
    }

    public String getLoggerName() {
        return loggerName;
    }

    public void setLoggerName(String loggerName) {
        this.loggerName = loggerName;
    }

    public String getLevelString() {
        return levelString;
    }

    public void setLevelString(String levelString) {
        this.levelString = levelString;
    }

    public String getThreadName() {
        return threadName;
    }

    public void setThreadName(String threadName) {
        this.threadName = threadName;
    }

    public Integer getReferenceFlag() {
        return referenceFlag;
    }

    public void setReferenceFlag(Integer referenceFlag) {
        this.referenceFlag = referenceFlag;
    }

    public String getCallerFilename() {
        return callerFilename;
    }

    public void setCallerFilename(String callerFilename) {
        this.callerFilename = callerFilename;
    }

    public String getArg0() {
        return arg0;
    }

    public void setArg0(String arg0) {
        this.arg0 = arg0;
    }

    public String getArg1() {
        return arg1;
    }

    public void setArg1(String arg1) {
        this.arg1 = arg1;
    }

    public String getArg2() {
        return arg2;
    }

    public void setArg2(String arg2) {
        this.arg2 = arg2;
    }

    public String getArg3() {
        return arg3;
    }

    public void setArg3(String arg3) {
        this.arg3 = arg3;
    }

    public String getCallerClass() {
        return callerClass;
    }

    public void setCallerClass(String callerClass) {
        this.callerClass = callerClass;
    }

    public String getCallerMethod() {
        return callerMethod;
    }

    public void setCallerMethod(String callerMethod) {
        this.callerMethod = callerMethod;
    }

    public String getCallerLine() {
        return callerLine;
    }

    public void setCallerLine(String callerLine) {
        this.callerLine = callerLine;
    }

    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }

    @Override
    public String toString() {
        return "LoggingEvent{" +
        ", timestmp=" + timestmp +
        ", formattedMessage=" + formattedMessage +
        ", loggerName=" + loggerName +
        ", levelString=" + levelString +
        ", threadName=" + threadName +
        ", referenceFlag=" + referenceFlag +
        ", callerFilename=" + callerFilename +
        ", arg0=" + arg0 +
        ", arg1=" + arg1 +
        ", arg2=" + arg2 +
        ", arg3=" + arg3 +
        ", callerClass=" + callerClass +
        ", callerMethod=" + callerMethod +
        ", callerLine=" + callerLine +
        ", eventId=" + eventId +
        "}";
    }
}