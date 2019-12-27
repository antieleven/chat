package com.itany.dichat.dao;


import org.apache.ibatis.annotations.Param;


public interface UserLogDao {
    void add(@Param("userid")int userid,@Param("create_at")long create_at,@Param("IP")String IP);
}
