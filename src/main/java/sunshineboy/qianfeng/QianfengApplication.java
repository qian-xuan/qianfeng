package sunshineboy.qianfeng;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("sunshineboy.qianfeng.mapper")
public class QianfengApplication {

    public static void main(String[] args) {
        SpringApplication.run(QianfengApplication.class, args);
    }

}
