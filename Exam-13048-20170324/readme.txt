一、项目信息
	/Exam-13048-20170324
	
二、设置数据库密码
	1、找到文件/Exam-13048-20170324/src/main/resources/conf/jdbc.properties
	2、根据需要设置数据库相关信息
	
三、运行项目
	1、清除编译文件；mvn clean compile
	2、编译：mvn compile
	3、起服务：mvn jetty:run
	4、运行项目：http://localhost:8088/Exam-13048-20170324/views/login.jsp