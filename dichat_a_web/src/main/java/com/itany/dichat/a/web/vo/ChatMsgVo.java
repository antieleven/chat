package com.itany.dichat.a.web.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ChatMsgVo {
    private Integer sendUserid;
    private Integer toUserid;
    private CommonsMultipartFile file;

    public Integer getSendUserid() {
        return sendUserid;
    }

    public void setSendUserid(Integer sendUserid) {
        this.sendUserid = sendUserid;
    }

    public Integer getToUserid() {
        return toUserid;
    }

    public void setToUserid(Integer toUserid) {
        this.toUserid = toUserid;
    }

    public CommonsMultipartFile getFile() {
        return file;
    }

    public void setFile(CommonsMultipartFile file) {
        this.file = file;
    }
}
