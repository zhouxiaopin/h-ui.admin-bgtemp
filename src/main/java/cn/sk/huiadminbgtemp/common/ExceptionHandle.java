package cn.sk.huiadminbgtemp.common;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 *异常处理器
 */
@ControllerAdvice
@Slf4j
public class ExceptionHandle {
    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public ServerResponse handle(Exception e, HttpServletRequest httpServletRequest) {
        log.error("{} Exception",httpServletRequest.getRequestURI(),e);
        //以后要添加判断是否是ajax请求
        if (e instanceof CustomException) {
            CustomException customException = (CustomException) e;
            return ServerResponse.createByErrorCodeMessage(customException.getCode(),customException.getMessage());
        }else if (e instanceof HttpRequestMethodNotSupportedException) {
            log.error("【请求方式异常】{}", e);
            return ServerResponse.createByErrorMessage(e.getMessage());
        }else {
            log.error("【系统异常】{}", e);
            return ServerResponse.createByErrorCodeMessage(ResponseCode.SYS_UNKNOWN_ERROR.getCode(),ResponseCode.SYS_UNKNOWN_ERROR.getMsg());
        }
    }
}
