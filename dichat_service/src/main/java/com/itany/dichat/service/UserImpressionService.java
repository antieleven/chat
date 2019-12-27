package com.itany.dichat.service;

import com.itany.dichat.pojo.UserImpression;

import java.util.List;

public interface UserImpressionService {
    List<UserImpression> selectAllByToUserid(int friendUserid);

    int addImpression(int userid, int friendUserid, String msg);
}
