# Spring 框架(Spring 5)

## 1. Spring 概念
1. 轻量级javaEE 框架
2. Spring 可解决企业开发的复杂性
3. Spring 有两个核心部分: `IOC` 和 `Aop`
	* `IOC`: **控制反转**, 把创建的对象交给Spring进行管理
	* `Aop`: **面向切面**, 不修改源代码进行功能增强
4. 入门案例:
```java
/* User 类*/
public class User{
	public void add(){
		System.out.println("add ...");	
	}
}
```

```xml
<!--配置文件-->
<bean id="user" class="com.XXX.User"></bena>
```

```java
/* 测试类 */
public class TestSpring5 {
    @Test
    public void testAdd(){
        //1 加载配置文件
        ApplicationContext context=new ClassPathXmlApplicationContext("bean1.xml");

        //2 获取配置创建的对象
        User user = context.getBean("user", User.class);

        System.out.println(user);
        user.add();

    }
}
```

## 2. IOC 容器
1. **IOC介绍:** 
	1. 控制反转,把对象创建和对象之间的调用过程，交给spring处理
	2. 使用ICO目的: 为了耦合度降低

2. ICO **底层原理:**
	1. xml解析、工厂模式、反射
	

## 3. Aop

## 4. JdbcTemplate

## 5. 事务管理

## 6. Spring 5 新特性
