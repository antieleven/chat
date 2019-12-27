package com.itany.dichat.a.web.controller;

import com.itany.dichat.service.chatMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chatMsg")
public class chatMsgController {
    @Autowired
    private chatMsgService chatMsgService;
    @RequestMapping("getMsg")
    public String getMSg(){

        //获取信息
        return "";
    }
}
