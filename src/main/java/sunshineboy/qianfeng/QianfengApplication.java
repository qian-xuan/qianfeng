package sunshineboy.qianfeng;

import com.baomidou.mybatisplus.core.incrementer.IKeyGenerator;
import com.baomidou.mybatisplus.extension.incrementer.PostgreKeyGenerator;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@MapperScan("sunshineboy.qianfeng.mapper")
public class QianfengApplication {

    public static void main(String[] args) {
        SpringApplication.run(QianfengApplication.class, args);
    }

    @Bean
    public IKeyGenerator keyGenerator() {
        return new PostgreKeyGenerator();
    }
}
