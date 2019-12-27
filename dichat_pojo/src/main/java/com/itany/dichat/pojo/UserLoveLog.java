package com.itany.dichat.pojo;

import java.io.Serializable;

public class UserLoveLog implements Serializable {
    private Integer id;
    private Integer impressionid;
    private Integer Userid;
    private Long create_at;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getImpressionid() {
        return impressionid;
    }

    public void setImpressionid(Integer impressionid) {
        this.impressionid = impressionid;
    }

    public Integer getUserid() {
        return Userid;
    }

    public void setUserid(Integer userid) {
        Userid = userid;
    }

    public Long getCreate_at() {
        return create_at;
    }

    public void setCreate_at(Long create_at) {
        this.create_at = create_at;
    }
}
