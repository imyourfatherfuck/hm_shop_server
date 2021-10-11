package com.ccoc.controller;

import com.alibaba.fastjson.JSONObject;
import com.ccoc.dao.SwipersMapper;
import com.ccoc.model.Swipers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by pc on 2021/10/11.
 */
@Controller
@RequestMapping("/api/swipers")
public class SwiperController {

    @Resource
    private SwipersMapper swipersMapper;


    @RequestMapping(value = "/findAll", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject findAll(HttpServletResponse response) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        List<Swipers> swiperses = swipersMapper.findAll();
        json.put("message",swiperses);
        json.put("status", 0);
        return json;
    }
}

