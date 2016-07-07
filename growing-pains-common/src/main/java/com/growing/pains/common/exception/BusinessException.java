package com.growing.pains.common.exception;

/**
 * @author: miaoxing
 * DATE:    16/7/4
 */
public class BusinessException extends RuntimeException {
    static final long serialVersionUID = 1L;

    public BusinessException() {
    }

    public BusinessException(String message) {
        super(message);
    }

    public BusinessException(String msgTemplate, Object... args){
        super(String.format(msgTemplate,args));
    }

    public BusinessException(String message, Throwable cause) {
        super(message, cause);
    }

    public BusinessException(Throwable cause, String msgTemplate, Object... args){
        super(String.format(msgTemplate,args), cause);
    }

    public BusinessException(Throwable cause) {
        super(cause);
    }
}
