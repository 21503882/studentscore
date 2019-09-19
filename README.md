需要的项目加QQ  80213251 或者 79120063 或者微信 80213251吧

**完整的设计报告在后面**，请下载视频查看

喜欢就点一下star哟，谢谢亲的支持  

Java版本：1.8   
数据库：MySQL  
框架：Spring + Spring MVC + MyBatis  
服务器：Tomcat  
前端解析框架：Thymeleaf  
开发工具：Idea 2017  
版本管理工具：Maven  
版本控制工具：GitHub  
# 3 详细设计
## 3.1 数据字典
用户信息表  

| 字段名 |	字段类型|	是否可为空|	备注|
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	|  否|	主键|
|Modify	|Datetime|	  是|	修改时间|
|Username|	Varchar(50)	 | 否|	用户昵称|
|Phone|	Char(11)|	  否	|  用户手机号码|
|realName|	Varchar(20)	|  是|	  用户真实姓名|
|Clazz|	Varchar(20)	  |是|	  用户所在班级|
|Sno|	Char(12)|	  是|	用户学号|
|Dormitory|	Varchar(20)	|  是|	宿舍号|
|Gender|	Char（2）|	  是|	性别|
|Createtime	|Datetime|	  是|	创建时间|
|Avatar|	Varchar(200)|	  是	| 头像|

用户密码表  

|字段名	|字段类型|	是否可为空|	备注|
|:------:|:------:|:------:|:------:|
|Id|	Int	| 否|	主键|
|Modify	|Datetime|	 是	|修改时间|
|Password|	Varchar(24)	| 否|	用户密码|
|Uid|	Int|	否|	用户id|

商品表  

|字段名	|字段类型|	是否可为空|	备注|
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	 | 否|	主键
|Modify|	Datetime|	  是|	修改时间
|Name|	Varchar(50)	|  否|	商品名称
|Level|	Int	  |否|	商品成色
|Remark	|Varchar(255)|	  是|	  商品详细信息
|Price|	Decimal(0.00)|	  否|	商品价格
|Sort|	Int	|  否|	商品类别
|Count|	Int	|  否|	商品数量
|Display|	Int	 | 否|	 商品是否被下架
|Transaction	|Int|	  否	|    交易方式
|Sales|	Int	 | 否|	   商品销量|
|Uid	|Int	|  否|	发表的用户id|
|Image|	Varchar(255)|	  否|	商品的图片地址

商品留言  

|字段名	|字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)|	  否|	主键
|Modify|	Datetime|	  是|	修改时间
|Sid|	Int	|  否|	商品的id
|Content|	Varchar(122)|	  否|	留言内容
|Display	|Int|	  否|	是否可见
|Uid	|Int	|  否|	评论的用户id

我的收藏  

|字段名	|字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	 | 否|	主键
|Modify|	Datetime|	  是|	修改时间
|Sid	|Int	 | 否	|商品的id
|Display	|Int|	  否|	是否可见
|Uid	|Int	|  否|	评论的用户id

求购商品  

|字段名|	字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	 | 否|	主键
|Modify|	Datetime|	  是|	修改时间
|Name|	Varchar(50)	  |否|	  求购商品名称
|Remark|	Varchar(255)|	  是|	  求购商品详情
|Price|	Decimal(0.00)|	  否|	  求购商品价格
|Sort|	Int	|  否|	  求购商品类别
|Count|	Int	|  否|	  求购商品数量
|Display|	Int	 | 否|	 信息是否被删除
|Transaction|	Int	|  否|	    交易方式
|Uid	|Int	|  否|	发表的用户id
|Image|	Varchar(255)|	  否|	商品的图片地址

求购商品留言  

|字段名|	字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	|  否|	主键
|Modify|	Datetime|	  是|	修改时间
|Qid	|Int	|  否|	求购商品的id
|Content|	Varchar(122)|	  否|	留言内容
|Display|	Int|	  否|	是否可见
|Uid	|Int	 | 否|	评论的用户id


我发布的商品  

|字段名|	字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	|  否|	主键
|Modify|	Datetime|	  是|	修改时间
|Display	|Int	|  否|	是否被删除
|Uid	|Int	 | 否|	用户id
|Sid	|Int|	  否|	对应商品id

我求购的商品  
|字段名|	字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	 | 否|	主键
|Modify|	Datetime|	  是|	修改时间
|Display|	Int	|  否|	是否被删除
|Uid|	Int	|  否|	用户id
|Qid|	Int	|  否	|求购商品id

已购买的商品  

|字段名|	字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	 | 否	|主键
|Modify|	Datetime|	  是|	修改时间
|State|	Int	 | 否|	商品当前的状态
|Uid	|Int	 | 否|	用户id
|Sid|	Int	|  否|	商品id
|Quantity|	Int	|  否|	商品数量

购物车  

|字段名|	字段类型|	是否可为空|	备注
|:------:|:------:|:------:|:------:|
|  Id|	Int(11)	|  否|	主键
|Modify|	Datetime	|  是|	修改时间
|Display|	Int|	  否|	商品是否被删除
|Uid|	Int|	  否|	用户id
|Sid|	Int|	  否|	商品id
|Quantity|	Int	|  否|	商品数量



