package com.ccoc.controller;

import com.alibaba.fastjson.JSONObject;
import com.ccoc.dao.GoodsMapper;
import com.ccoc.dao.SwipersMapper;
import com.ccoc.model.Goods;
import com.ccoc.model.Swipers;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by pc on 2021/10/11.
 */
@Controller
@RequestMapping("/api")
public class ApiController {

    @Resource
    private SwipersMapper swipersMapper;

    @Resource
    private GoodsMapper goodsMapper;


    @RequestMapping(value = "/swipers/findAll", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject swipersFindAll(HttpServletResponse response) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        List<Swipers> swiperses = swipersMapper.findAll();
        json.put("message",swiperses);
        json.put("status", 0);
        return json;
    }


    @RequestMapping(value = "/getgoods", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getgoods(HttpServletResponse response, HttpServletRequest request) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");


        //获取传递参数
        String pageIndex = request.getParameter("pageIndex");
        String pageSize = request.getParameter("pageSize");
        if(StringUtils.isEmpty(pageIndex)) {
            pageIndex = "1";
        }
        if(StringUtils.isEmpty(pageSize)) {
            pageSize = "10";
        }
        JSONObject json = new JSONObject();

        int pageIndexF = Integer.valueOf(pageIndex);
        int pageSizeF = Integer.valueOf(pageSize);
        PageHelper.startPage(pageIndexF, pageSizeF);
        List<Goods> lists = goodsMapper.findAllGoodsByPageF(pageIndexF, pageSizeF);
        json.put("message",lists);
        json.put("status", 0);
        return json;
    }

}

