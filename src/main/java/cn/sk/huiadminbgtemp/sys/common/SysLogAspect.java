package cn.sk.huiadminbgtemp.sys.common;

import cn.sk.huiadminbgtemp.sys.pojo.SysLogCustom;
import cn.sk.huiadminbgtemp.sys.service.ISysLogService;
import cn.sk.huiadminbgtemp.sys.utils.IpAdrressUtil;
import com.alibaba.fastjson.JSON;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * 系统日志：切面处理类
 */
@Component
@Aspect
@Slf4j
public class SysLogAspect {
    @Autowired
    private ISysLogService sysLogService;

    //定义切点 @Pointcut
    //在注解的位置切入代码
    @Pointcut("@annotation( cn.sk.huiadminbgtemp.sys.common.SkLog)")
    public void logPoinCut() {
    }

    //切面 配置通知
    @AfterReturning("logPoinCut()")
    public void saveSysLog(JoinPoint joinPoint) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        log.debug("======系统日志处理开始======");
        //保存日志
        SysLogCustom sysLogCustom = new SysLogCustom();

        //从切面织入点处通过反射机制获取织入点处的方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        //获取切入点所在的方法
        Method method = signature.getMethod();

        //获取操作
        StringBuilder operation = new StringBuilder();

        SkLog skLog = method.getAnnotation(SkLog.class);
        if (skLog != null) {
            operation.append(skLog.value());
        }
        //保存获取的操作
        sysLogCustom.setOperation(operation.toString());

        //获取请求的类名
//        String className = joinPoint.getTarget().getClass().getName();
        //获取请求的方法名
//        String methodName = method.getName();
//        sysLogCustom.setMethodName(className + "." + methodName);
        String methodName = method.getName();
        String simpleName = joinPoint.getTarget().getClass().getSimpleName();
        sysLogCustom.setMethodName(simpleName + "_" + methodName);
        sysLogCustom.setExpan1(signature.getDeclaringTypeName() + "_" +methodName);
        //url
        sysLogCustom.setRequestUrl(request.getRequestURL().toString());
        //method
        sysLogCustom.setRequestType(request.getMethod());

        //请求的参数
        Object[] args = joinPoint.getArgs();
        //将参数所在的数组转换成json
        String params = JSON.toJSONString(args);
        sysLogCustom.setParams(params);

        //获取用户名
        sysLogCustom.setUserName("以后修改");
        //获取用户ip地址
        sysLogCustom.setIp(IpAdrressUtil.getIpAdrress(request));

        sysLogCustom.setRecordStatus(Const.RecordStatus.ABLE);
        //调用service保存SysLog实体类到数据库
        sysLogService.insert(sysLogCustom);

        log.debug("======系统日志处理======");
    }

}
