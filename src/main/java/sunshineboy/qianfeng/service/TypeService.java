package sunshineboy.qianfeng.service;

import com.baomidou.mybatisplus.extension.service.IService;
import sunshineboy.qianfeng.bean.Type;

import java.util.Map;

public interface TypeService extends IService<Type> {
    Map<Integer, String> map();
}
