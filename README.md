# dockernize elasticsearch 5.1.1 和 elasticsearch-analysis-ik 5.1.1 中文分词

### 需求
网上找了一圈没有找到 elasticsearch 5.1.1 和中文分词 docker 化的版本，所以自己做了一个。

1. 使用docker
2. elasticsearch 5.1.1 版本
3. elasticsearch-analysis-ik 5.1.1 版本

### 使用
```
git clone https://github.com/runforever/es_ik5.1.1.git
docker-compose up
```

#### wget ik 分词失败
由于墙的原因，wget 下载 ik 分词失败的话，使用浏览器先下载 [https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.1.1/elasticsearch-analysis-ik-5.1.1.zip](https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.1.1/elasticsearch-analysis-ik-5.1.1.zip) ，下载完成后放到 es_ik5.1.1 目录，`git checkout dev` 再执行 `docker-compose up`

### 参考
[elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html)

[elasticsearch-analysis-ik](https://github.com/medcl/elasticsearch-analysis-ik)

### 注意事项
我自己测试了分词没有问题，如果你是做测试用可以试试，如果是生产环境使用建议还是找你认为最稳定的版本。
