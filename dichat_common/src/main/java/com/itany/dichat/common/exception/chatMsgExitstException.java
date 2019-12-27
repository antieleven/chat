package com.itany.dichat.common.exception;


public class chatMsgExitstException extends Exception {
    public chatMsgExitstException() {
        super();
    }

    public chatMsgExitstException(String message) {
        super(message);
    }

    public chatMsgExitstException(String message, Throwable cause) {
        super(message, cause);
    }

    public chatMsgExitstException(Throwable cause) {
        super(cause);
    }
}
