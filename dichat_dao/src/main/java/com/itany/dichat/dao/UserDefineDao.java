package com.itany.dichat.dao;/**
 * @author:GodFrey
 * @date:2019/12/2/002.
 */

import com.itany.dichat.pojo.UserDefine;


public interface UserDefineDao {
    void add(UserDefine userDefine);

    UserDefine selectByUserid(int userid);

    void setIsNotFirstLogin(int userid);

    int updateDefineInfo(UserDefine userDefine);
}
