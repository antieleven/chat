package com.itany.dichat.dao;

import com.itany.dichat.pojo.UserImpression;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserImpressionDao {
    List<UserImpression> selectAllByToUserid(int friendUserid);

    int addImpression(@Param("fromUserid") int userid,@Param("toUserid") int friendUserid,@Param("msg") String msg,@Param("create_at") long time);
}
