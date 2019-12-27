package com.itany.dichat.service.impl;

import com.itany.dichat.dao.UserDefineDao;
import com.itany.dichat.pojo.UserDefine;
import com.itany.dichat.service.UserDefineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;


@Service
@Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
public class UserDefineServiceImpl implements UserDefineService {

    @Autowired
    private UserDefineDao userDefineDao;

    @Override
    public UserDefine selectByUserid(int userid) {
        return userDefineDao.selectByUserid(userid);
    }

    @Override
    public void setIsNotFirstLogin(int userid) {
        userDefineDao.setIsNotFirstLogin(userid);
    }

    @Override
    public int editInfo(UserDefine userDefine) {
        return userDefineDao.updateDefineInfo(userDefine);
    }
}
