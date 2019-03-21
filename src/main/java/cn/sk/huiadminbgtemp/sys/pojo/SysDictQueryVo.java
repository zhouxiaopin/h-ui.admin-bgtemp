package cn.sk.huiadminbgtemp.sys.pojo;

import cn.sk.huiadminbgtemp.base.pojo.BaseQueryVo;
import lombok.Getter;
import lombok.Setter;

/**
 * 系统数字字典实体类的包装对象
 */
@Getter
@Setter
public class SysDictQueryVo extends BaseQueryVo{
    private SysDictCustom sysDictCustom;
}