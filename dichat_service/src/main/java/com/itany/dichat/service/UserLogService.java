package com.itany.dichat.service;

public interface UserLogService {

    /**
     * 新增登录记录
     * @param userid
     * @param create_at
     * @param IP
     */
    void insertLog(int userid,long create_at,String IP);
}
