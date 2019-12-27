package com.itany.dichat.service;

import com.itany.dichat.pojo.UserDefine;

public interface UserDefineService {
    /**
     * 获取某个用户信息
     * @param userid
     * @return
     */
    public UserDefine selectByUserid(int userid);

    void setIsNotFirstLogin(int userid);

    int editInfo(UserDefine userDefine);
}
