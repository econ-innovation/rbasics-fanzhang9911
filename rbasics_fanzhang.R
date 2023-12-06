# R语言基础作业
# 张繁 2023.12.02

# P20ex1
# 定义一个数字变量
x1 <- 3.141592657
# 打印x1的类型
print(class(x1))
# [1] "numeric"

# 使用as.character()函数将x1转换成character
y1 <- as.character(x1)
# 打印y1的类型和值
print(class(y1))
# [1] "character"
print(y1)
# [1] "3.141592657"


# P20ex2
# 使用as.logical()函数将x1转换成logical
y2 <- as.logical(x1)
# 打印y2的类型和值
print(class(y2))
# [1] "logical"
print(y2)
# [1] TRUE


# P20ex3
# 定义一个字符串变量
x3 <- "hello world"
# 打印x3的类型
print(class(x3))
# [1] "character"

# 使用is.character()函数判断x3是否是一个character
y3 <- is.character(x3)
# 打印y3的类型和值
print(class(y3))
# [1] "logical"
print(y3)
# [1] TRUE
# 因此，“hello world”是一个character


# P20ex4
# 定义一个包含NA的向量
x4 <- c(1, 2, NA, 4, 5)
# 打印x4的值
print(x4)
# [1]  1  2 NA  4  5

# 使用is.na()函数判断x4中的每个元素是否是缺失值
y4 <- is.na(x4)
# 打印y4的类型和值
print(class(y4))
# [1] "logical"
print(y4)
# [1] FALSE FALSE  TRUE FALSE FALSE


#P35
v1 <- c(1,2,3,4)
v2 <- c(2,3,4,5)
v3 <- c(v1,v2)
v4 <- c(1,2,'c')

#P35 ex1
# 使用[]运算符取出v1的第2和第3个元素
v1_1 <- v1[c(2,3)]
# 打印v1_1的值
print(v1_1)
# [1] 2 3


#P35 ex2
# 使用length()函数获取v1的长度
n <- length(v1)
# 打印n的值
print(n)
# [1] 5

# 使用[]运算符取出v1的最后一个元素
v1_2 <- v1[n]
# 打印v1_2的值
print(v1_2)
# [1] 4


#P35 ex3
# 使用[]运算符取出v1的倒数第二个元素
v1_3 <- v1[n-1]
# 打印v1_3的值
print(v1_3)
# [1] 3


#P35 ex4
# 使用[]运算符选取v1中整除3的元素
v1_4 <- v1[v1 %% 3 == 0]
# 打印v1_4的值
print(v1_4)
# [1] 3


#P35 ex5
v1_5 <- v1[-1]
# 打印v1_5的值
print(v1_5)
# v1[-1]会返回一个向量，包含v1中除了第一个元素以外的所有元素
# 启示：可以使用负数的位置来从向量中排除某些元素


#P35 ex6
v1_6 <- v1[5]
# 打印v1_6的值
print(v1_6)
# v1[5]会返回一个包含NA的向量
# 启示：当你试图选取一个向量中不存在的位置时，R语言会返回一个NA值


#P35 ex7
v1[] <- 99
# 打印v1的值
print(v1)
# [1] 99 99 99 99

v1 <- 99
# 打印v1的值
print(v1)
# [1] 99

# v1[] <- 99 会将v1中的所有元素替换成99
# v1 <- 99 会将v1整个替换成一个只有一个元素的向量，即99
