package com.baomidou.springmvc.controller;


import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.springmvc.common.utils.FileUploadUtils;
import com.baomidou.springmvc.model.system.MyUser;
import com.baomidou.springmvc.service.system.impl.MyUserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * 后台用户表 前端控制器
 * </p>
 *
 * @author zsy带你飞123
 * @since 2018-04-09
 */
@Controller
@RequestMapping("/myUser")
public class MyUserController {
    private boolean isLogin = false;
    @Autowired
    private MyUserServiceImpl myUserService;

    @RequestMapping("/personalInfo")
    public String regUser(ModelMap modelMap) {
        EntityWrapper entityWrapper = new EntityWrapper();
        MyUser myUser = new MyUser();
        myUser.setId(7);
        entityWrapper.setEntity(myUser);
        MyUser myUser1 = myUserService.selectOne(entityWrapper);
//        System.out.println(myUser1);
        modelMap.addAttribute("myUser", myUser1);
        return "admin-user";

    }

    @RequestMapping("/toLogin")
    public String loginJsp() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(MyUser myUser, ModelMap modelMap, RedirectAttributes redirectAttributes) {
        EntityWrapper entityWrapper = new EntityWrapper();

        entityWrapper.setEntity(myUser);
        myUser = (myUserService.selectOne(entityWrapper));

        System.out.println(myUser);

        if (myUser != null) {
            isLogin = true;
            redirectAttributes.addFlashAttribute("a", "a");
            redirectAttributes.addFlashAttribute("b", "b");
            modelMap.addAttribute("message", "success");
            return "redirect:/myUser/home";

        } else {
            modelMap.addAttribute("message", "用户名密码或者密码错误");

            return "login";
        }

    }

    @RequestMapping("/home")
    public String toleftJsP() {
        if (isLogin) {
            return "left";
        } else {
            return "login";
        }
    }

    //http://zjutsoft.iteye.com/blog/1084260 request获取各种根路径
    //https://blog.csdn.net/chenchunlin526/article/details/70947262
    @RequestMapping("/upload")
    public String uploadImage(MultipartFile file, HttpServletRequest request,ModelMap modelMap) {

        return "";
    }
    @PostMapping("/regSter")
    public String regSterUser(MyUser myUser,MultipartFile file, HttpServletRequest request,ModelMap modelMap,RedirectAttributes redirectAttributes){
        FileUploadUtils.uploadHeadImage(file,request);

        boolean isAdd=myUserService.insert(myUser);
        if(isAdd){
            modelMap.put("messgae","成功了");
            redirectAttributes.addFlashAttribute("messge1","success");
            return "redirect:/adminPage/regSter.jsp";
        }else {
            modelMap.put("message","系统异常");
            redirectAttributes.addFlashAttribute("messge1","fail");

            return "redirect:/adminPage/regSter.jsp";
        }
    }


}

