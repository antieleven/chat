package com.itany.dichat.common.exception;


public class UserAddMsgExitstException extends Exception {
    public UserAddMsgExitstException() {
        super();
    }

    public UserAddMsgExitstException(String message) {
        super(message);
    }

    public UserAddMsgExitstException(String message, Throwable cause) {
        super(message, cause);
    }

    public UserAddMsgExitstException(Throwable cause) {
        super(cause);
    }
}
