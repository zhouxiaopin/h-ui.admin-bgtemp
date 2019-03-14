package cn.sk.huiadminbgtemp.sys.common;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * http请求切面
 */
@Component
@Aspect
@Slf4j
public class HttpAspect {
    @Pointcut("execution(* cn.sk..controller.*.*(..))")
    public void log() {
    }

    @Before("log()")
    public void doBefore(JoinPoint joinPoint) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        HttpSession session = request.getSession();

        log.debug("*************请求开始**************");
        //url
        log.debug("url={}", request.getRequestURL());

        //method
        log.debug("method={}", request.getMethod());

        //ip
        log.debug("ip={}", request.getRemoteAddr());

        //类方法
        log.debug("class_method={}", joinPoint.getSignature().getDeclaringTypeName() + "_" + joinPoint.getSignature().getName());

        //参数
        log.debug("args={}", joinPoint.getArgs());

//        AdminCustom adminInfo = (AdminCustom) session.getAttribute("adminInfo");
//        if(null != adminInfo) {
//            //操作人
//            logger.info("currAdminAccount={}", adminInfo.getAccount());
//        }
    }

    @After("log()")
    public void doAfter() {

    }

    @AfterReturning(returning = "object", pointcut = "log()")
    public void doAfterReturning(Object object) {
        log.debug("response={}", object.toString());
        log.debug("*************请求结束**************");
    }
}
