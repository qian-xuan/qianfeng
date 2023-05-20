package sunshineboy.qianfeng.service.impl;


import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import sunshineboy.qianfeng.bean.Type;
import sunshineboy.qianfeng.mapper.TypeMapper;
import sunshineboy.qianfeng.service.TypeService;

@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements TypeService {
}
