# ASimpleBlog  

连接mysql 数据库：


默认Django使用的是sqllite3，mysqldb没有支持python3版本的，可以使用pymysql代替mysqldb。

1、使用mysqlclient代替mysqldb
  
    pip install mysqlclient
   
2、 setting.py中配置：（在本地开发，可先创建数据库simpleBlog）

    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.mysql',
            'HOST': 'localhost',
            'PORT': '3306',
            'NAME': 'simpleBlog',
            'USER': 'root',
            'PASSWORD': 'root3306',
        }
    }
  
3、在项目根目录下__init__.py文件中加入以下代码

      import pymysql
      pymysql.install_as_MySQLdb()
 
 
4、执行命令：

      python manage.py makemigrations  #在该APP的migrations目录下生成本地文件0001_initial.py 
      python manage.py migrate   #同步到数据库
      
 
5、报错部分：

   （1）Django：报错 
   
        raise MigrationSchemaMissing("Unable to create the django_migrations table (%s)" % exc)
  
  原因：Django2.1不再支持MySQL5.5，必须5.6版本以上
   解决方法：升级数据库
 
 
   （2）Django: 报错  
   
        raise ImproperlyConfigured('mysqlclient 1.3.13 or newer is required; you have %s.' % Database.__vers
   
   原因：由于 mysqlclient 目前不支持高版本python
   解决方法： 出现这个错误之后可以根据错误提示找到文件位置，打开 base.py 文件，找到如下代码： （venv>lib>site-packages>django>db>backends>mysql）
        
        version = Database.version_info
        if version < (1, 3, 13):
            raise ImproperlyConfigured('mysqlclient 1.3.13 or newer is required; you have %s.' % Database.__version__)
     
     将 if 语句注释掉之后在执行命令就不会再报错
     
        version = Database.version_info
        # if version < (1, 3, 13):
        #     raise ImproperlyConfigured('mysqlclient 1.3.13 or newer is required; you have %s.' % Database.__version__)

   
   （3）Django：报错 
   
        AttributeError: ‘str’ object has no attribute 'decode’
   
   解决方法：（venv>lib>site-packages>django>db>backends>mysql） 
        operations.py文件中， query.decode 所在的代码行，将代码里面query.decode改成：query.encode
   
   
   
   
