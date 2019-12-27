package com.itany.dichat.service;

import com.itany.dichat.common.exception.UserExistException;
import com.itany.dichat.dto.UserDefineDto;
import com.itany.dichat.pojo.User;
import org.apache.commons.fileupload.FileUploadException;

public interface UserService {
    //用户名登录
    public User UserLoginByusername(String username) throws UserExistException;

    //用户名登录
    public User UserLoginById(int username) throws UserExistException;

    //设置用户sessionid
    public void UserSetSessionId(String sessionId,int id) ;

    //session反查用户id
    public User SessionIDGetUserId(String sessionId) throws UserExistException;

    //新建用户
    void insertUser(UserDefineDto userDefineDto) throws FileUploadException;

    boolean checkUsername(String username);
}
