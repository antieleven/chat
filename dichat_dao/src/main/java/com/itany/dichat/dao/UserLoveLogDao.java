package com.itany.dichat.dao;

import com.itany.dichat.pojo.UserLoveLog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserLoveLogDao {

    List<UserLoveLog> selectByImpressionId(Integer id);

    int addLove(@Param("userid") int userid,@Param("impressionId") int impressionId,@Param("time") long time);

    UserLoveLog selectOneByuseridAndImpressionId(@Param("userid") int userid,@Param("impressionId") int impressionId);
}
