package com.itany.dichat.service;

import com.itany.dichat.common.exception.UserAddMsgExitstException;
import com.itany.dichat.pojo.AddMsgList;
import com.itany.dichat.pojo.UserAddMsg;

import java.util.List;

public interface UserAddMsgService {
    /**
     * 由好友id添加好友
     * 判断是否为好友
     * 是否存在，如果存在is_black
     * @param userid
     * @param friendUserid
     * @param msg
     * @return
     */
    int addFriendByFriendUserid(int userid, int friendUserid, String msg) throws UserAddMsgExitstException;

    /**
     * 查找所有添加好友信息
     * @param userid
     * @return
     */
    List<AddMsgList> findAllByUserid(int userid);

    /**
     * 同意好友
     * @param id
     * @return
     */
    void updateSetStatusAgree( int id) throws UserAddMsgExitstException;

    void updateSetStatusDisAgree(int id, String disagreeMsg) throws UserAddMsgExitstException;
}
