package cn.sk.huiadminbgtemp.base.pojo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BaseQueryVo {
    private Integer start;//当前第几页
    private Integer length;//页面显示数量
    private Integer draw;//请求次数

}
