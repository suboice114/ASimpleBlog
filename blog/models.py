from django.db import models

# Create your models here.


class Article(models.Model):

    article_id = models.AutoField(primary_key=True)
    title = models.TextField(max_length=32)
    # 文章的摘要
    brief_content = models.TextField()
    # 文章的主要内容
    content = models.TextField()
    # 文章的发布日期
    publish_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title
