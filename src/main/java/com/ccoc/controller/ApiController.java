package com.ccoc.controller;

import com.alibaba.fastjson.JSONObject;
import com.ccoc.dao.*;
import com.ccoc.model.*;
import com.ccoc.util.ImgDetail;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
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

    @Resource
    private CategoryMapper categoryMapper;

    @Resource
    private CategoryItemMapper categoryItemMapper;

    @Resource
    private NewsMapper newsMapper;

    @Resource
    private DetailSwipersMapper detailSwipersMapper;


    @RequestMapping(value = "/swipers/findAll", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject swipersFindAll(HttpServletResponse response) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        List<Swipers> swiperses = swipersMapper.findAll();
        json.put("message", swiperses);
        json.put("status", 0);
        return json;
    }


    @RequestMapping(value = "/getgoods", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getGoods(HttpServletResponse response, HttpServletRequest request) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");


        //获取传递参数
        String pageIndex = request.getParameter("pageIndex");
        String pageSize = request.getParameter("pageSize");
        if (StringUtils.isEmpty(pageIndex)) {
            pageIndex = "1";
        }
        if (StringUtils.isEmpty(pageSize)) {
            pageSize = "10";
        }
        JSONObject json = new JSONObject();

        int pageIndexF = Integer.valueOf(pageIndex);
        int pageSizeF = Integer.valueOf(pageSize);
        PageHelper.startPage(pageIndexF, pageSizeF);
        List<Goods> lists = goodsMapper.findAllGoodsByPageF(pageIndexF, pageSizeF);
        json.put("message", lists);
        json.put("status", 0);
        return json;
    }

    @RequestMapping(value = "/getimgcategory", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getImgCategory(HttpServletResponse response) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        List<Category> categories = categoryMapper.findAll();
        json.put("message", categories);
        json.put("status", 0);
        return json;
    }


    @RequestMapping(value = "/getimages", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getImages(HttpServletResponse response, HttpServletRequest request) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        String cateId = request.getParameter("cateId");
        JSONObject json = new JSONObject();
        List<CategoryItem> categoryItems = categoryItemMapper.findByCateId(cateId);
        json.put("message", categoryItems);
        json.put("status", 0);
        return json;
    }


    @RequestMapping(value = "/getnewslist", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getNewsList(HttpServletResponse response) {
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        List<News> news = newsMapper.findAll();
        json.put("message", news);
        json.put("status", 0);
        return json;
    }

    @RequestMapping(value = "/getNews", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getNews(HttpServletResponse response, HttpServletRequest request) {
        String id = request.getParameter("id");
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        News news = newsMapper.findById(id);
        json.put("message", news);
        json.put("status", 0);
        return json;
    }


    @RequestMapping(value = "/getDetailSwipers", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getDetailSwipers(HttpServletResponse response, HttpServletRequest request) {
        String pid = request.getParameter("pid");
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        List<DetailSwipers> detailSwipers = detailSwipersMapper.findByPId(pid);
        if (detailSwipers != null && detailSwipers.size() > 0) {

            List<ImgDetail> list = new ArrayList<>();
            for (DetailSwipers swipers : detailSwipers) {
                ImgDetail imgDetail = new ImgDetail();
                imgDetail.setSrc(swipers.getSrc());
                list.add(imgDetail);
            }
            json.put("message", list);
            json.put("status", 0);
            return json;
        }
        return null;
    }

    @RequestMapping(value = "/getGoodsById", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getGoodsById(HttpServletResponse response, HttpServletRequest request) {
        String id = request.getParameter("id");
        //设置响应头
        response.setHeader("Access-Control-Allow-Origin", "*");
        JSONObject json = new JSONObject();
        Goods goods = goodsMapper.findById(id);
        json.put("message", goods);
        json.put("status", 0);
        return json;
    }

}

