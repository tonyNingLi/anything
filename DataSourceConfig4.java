package com.example.config;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.sql.DataSource;

@Configuration
@MapperScan(basePackages = "com.example.mapper.test04", sqlSessionFactoryRef = "test4SqlSessionFactory")
public class DataSourceConfig4 {
    @Bean(name = "test4DataSource")
    @ConfigurationProperties(prefix = "spring.datasource.test4")
    public DataSource getDateSource4() {
        return DataSourceBuilder.create().build();
    }
    @Bean(name = "test4SqlSessionFactory")
    public SqlSessionFactory test4SqlSessionFactory(@Qualifier("test4DataSource") DataSource datasource)
            throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(datasource);
        bean.setMapperLocations(
                new PathMatchingResourcePatternResolver().getResources("classpath*:mapping/test04/*.xml"));
        return bean.getObject();
    }
    @Bean("test4SqlSessionTemplate")
    public SqlSessionTemplate test4sqlsessiontemplate(
            @Qualifier("test4SqlSessionFactory") SqlSessionFactory sessionfactory) {
        return new SqlSessionTemplate(sessionfactory);
    }
}
