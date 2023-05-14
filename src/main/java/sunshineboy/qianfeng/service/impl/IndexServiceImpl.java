package sunshineboy.qianfeng.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import sunshineboy.qianfeng.bean.User;
import sunshineboy.qianfeng.mapper.IndexMapper;
import sunshineboy.qianfeng.service.IndexService;

@Service
public class IndexServiceImpl extends ServiceImpl<IndexMapper, User> implements IndexService { }
