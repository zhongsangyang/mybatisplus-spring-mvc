package com.baomidou.springmvc.model.system;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 后台用户表
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-09
 */
@TableName("my_user")
public class MyUser implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String emai;
    private String phone;
    @TableField("qq_number")
    private Integer qqNumber;
    @TableField("wei_Bo")
    private Integer weiBo;
    @TableField("introduct_self")
    private String introductSelf;
    @TableField("user_name")
    private String userName;
    @TableField("password")
    private String password;
    @TableField("head_image")
    private String headimage;

    public String getHeadimage() {
        return headimage;
    }

    public void setHeadimage(String headimage) {
        this.headimage = headimage;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmai() {
        return emai;
    }

    public void setEmai(String emai) {
        this.emai = emai;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getQqNumber() {
        return qqNumber;
    }

    public void setQqNumber(Integer qqNumber) {
        this.qqNumber = qqNumber;
    }

    public Integer getWeiBo() {
        return weiBo;
    }

    public void setWeiBo(Integer weiBo) {
        this.weiBo = weiBo;
    }

    public String getIntroductSelf() {
        return introductSelf;
    }

    public void setIntroductSelf(String introductSelf) {
        this.introductSelf = introductSelf;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "MyUser{" +
        ", id=" + id +
        ", emai=" + emai +
        ", phone=" + phone +
        ", qqNumber=" + qqNumber +
        ", weiBo=" + weiBo +
        ", introductSelf=" + introductSelf +
        ", userName=" + userName +
        "}";
    }
}
