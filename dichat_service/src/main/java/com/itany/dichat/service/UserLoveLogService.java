package com.itany.dichat.service;

import com.itany.dichat.common.exception.UserLoveLogExitstException;
import com.itany.dichat.pojo.UserLoveLog;

import java.util.List;

public interface UserLoveLogService {
    /**
     * 获取对应印象的点赞人
     * @param id
     * @return
     */
    List<UserLoveLog> selectByImpressionId(Integer id);

    /**
     * 新增点赞
     * @param userid
     * @param impressionId
     * @return
     */
    int addLove(int userid, int impressionId) throws UserLoveLogExitstException;
}
