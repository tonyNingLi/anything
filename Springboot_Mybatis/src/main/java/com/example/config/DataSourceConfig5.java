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
@MapperScan(basePackages = "com.example.mapper.test05", sqlSessionFactoryRef = "test5SqlSessionFactory")
public class DataSourceConfig5 {
    @Bean(name = "test5DataSource")
    @ConfigurationProperties(prefix = "spring.datasource.test5")
    public DataSource getDateSource5() {
        return DataSourceBuilder.create().build();
    }
    @Bean(name = "test5SqlSessionFactory")
    public SqlSessionFactory test5SqlSessionFactory(@Qualifier("test5DataSource") DataSource datasource)
            throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(datasource);
        bean.setMapperLocations(
                new PathMatchingResourcePatternResolver().getResources("classpath*:mapping/test05/*.xml"));
        return bean.getObject();
    }
    @Bean("test5SqlSessionTemplate")
    public SqlSessionTemplate test5sqlsessiontemplate(
            @Qualifier("test5SqlSessionFactory") SqlSessionFactory sessionfactory) {
        return new SqlSessionTemplate(sessionfactory);
    }
}
