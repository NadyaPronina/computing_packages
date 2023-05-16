# a, *b = [1,2,3]
# a, *b = 'hello'
# print(a, b, type(b))
# недостаток в том, что если пользоваться кортеж., списками, нужна циклы, а это не очень ибо например 
# range только на целый шаг и тд и тп, циклы работают медленно

import numpy as np
from scipy.integrate import solve_ivp

import matplotlib.pyplot as plt
from numpy import random
# numpy аналог мат лаба, модульная система. 
# numpy ndarray - основные атрибуты ndarray.ndim, shape, size, dtype, itemsize
# A = np.array([0,1,2,3,4,5,6,7,8,9])
# # print(A, type(A))

# B = np.array([[1,2], [3,4]])
# print(B, type(B))

# print(A.shape)
# print(B.shape)
# кортеж занимает меньше места, и возрвращается все в виде кортежа, чтобы сэкономить места в памяти

# np.arange (аналог range) генерирует массив numpy со значениями в укаазнном диапазоне
# print(np.arange(5, 15, 0.9))
# прелесть в последней переменной (это тип шаг) МОЖЕТ БЫТЬ НЕ ЦЕЛЫМ
# ПРАВАЯ ГРАНИЦА НЕ ВКЛЮЧАЕТСЯ, 15 НЕ БУДЕТ!! 14.9 последним будет

# print(np.linspace(3, 15, 10))
# последнее это кол-во точек, а не шаг

# r = np.random.rand(5,5)
# print(r) 


# def myFunc(i,j):
#     return (i+1)*(j+4-i)  #просто какое-то выражение

# a = np.fromfunction(myFunc, (3,6))
# #print(a, type(a)) #будет сразу массив numpy

# # начинаем с 0, правая граница не учитывается

# A = np.arange(0,15,1)
# print(A)
# print(A[3:8:2]) #start:stop:step


# A = np.array([[n+m*10 for n in range(5)] for m in range (5)])
# # print(A)
# # print(A*A) #умножает поэлементно!!
# # print(np.dot(A,A)) #как надо 

# M = np.matrix(A)
# print(type(M))
# print(M*M) # матричное умножение, т.к М это класс матрица!!



# lambda arguments: expression (в одну строку))(синтаксис)

# f = lambda x: x*x
# print(f(5))

# f = lambda x,y: x*y
# print(f(7,2))

# L = [1,2,3,4]
# a = list(map(lambda x:x**2,L)) #map дает возможность применять переданную функцию к каждому элементу
# print(a)

# print(list(filter(lambda x: x%2 == 0, [1,3,2,5, 20, 21]))) #выдаст список четных чисел из переданного массива


# fig = plt.figure() # создали область figure
# ax = fig.add_subplot(1,1,1) # добавляем оси (строка, столбец, к кому обращаюсь) можно fig.add_axes (если один график)

# fig.set(facecolor = 'green')
# ax.set(facecolor = 'red') #оси красные

# ax.set_xlim([-10,10])
# ax.set_ylim([-2,2])

# ax.set_xlabel('ось абцисс (Х)')
# ax.set_ylabel('ось ординат (У)')

# plt.show()


# fig, ax = plt.subplots()
# x = [-3,-2,-1,0,1,2,3]
# y = [9,4,1,0,1,4,9]
# ax.plot(x,y) # На этих осях хочу график
# plt.show()


# fig, (ax1, ax2) = plt.subplots(
#     nrows = 1, ncols = 2, figsize = (8,4) #1 строчка, 2 столбца (просто тип делю окно как в октаве сабплот)
# ) 
# и дальше могу на оси ax1 например нарисовать синус, а на ax2 косинус и все кайф либо на ax1 плот, а на ax2 гистограмму


# gridsize = (3,2) # сетка 3 на 2
# fig = plt.figure(figsize = (12,8))
# ax1 = plt.subplot2grid(gridsize, (0,0), colspan = 2, rowspan = 2) # объединяю 4 ячейки
# ax2 = plt.subplot2grid(gridsize, (2,0))
# ax3 = plt.subplot2grid(gridsize, (2,1))

# plt.show()



# 3хмерная графика
# from mpl_toolkits.mplot3d import axes3d
# # fig = plt.figure()
# # ax = fig.add_subplot(111, projection = '3d')
# fig, ax = plt.subplots(subplot_kw = {"projection" : "3d"})

# x = np.arange(-1, 1, 0.01)
# y = np.arange(-1, 1, 0.01)
# X, Y = np.meshgrid(x,y)
# Z = X**2 - Y**2

# s = ax.plot_wireframe(X, Y, Z, rstride = 20, cstride = 15) # rstride это тип шаг по строкам (насколько часто рисуем)
# # wireframe не залито
# s = ax.plot_surface(X, Y, Z, rstride = 20, cstride = 15)
# plt.show()






# НОВАЯ ПАРА. ДИФФУРЫ
# система Лоренса
# from mpl_toolkits.mplot3d import axes3d
# sigma = 10
# r = 28
# beta = 8/3

# def func(t, d, sigma, r, beta):
#     x, y, z = d
#     return [sigma*(y-x), x*(r - z) - y, x*y - beta*z]

# x0 = 0
# y0 = 1
# z0 = 20
# val = np.array([x0, y0, z0])

# timet = np.linspace(0, 40, 2000)
# res = solve_ivp(func, t_span = [0, 40], t_eval = timet, y0 = val, args = (sigma, r, beta))
 
# # print(res)
# t = np.linspace(0, 15, 300)
# fig = plt.figure()
# ax = fig.add_subplot(111, projection = '3d')

# # k = res.sol(t)
# # print(res.y[0])

# plt.plot(res.y[0], res.y[1], res.y[2])
# plt.show()





# 3 пара Пандас
import pandas as pd

# одномерные массивы
# данные любого типа. Разница от нумпая, есть еще метки осей (индексы)
# общий конструктор pandas.Series(data=None(обязательный параметр), index=None, dtype=None, name=None, cope=False, fasrPath)


# labels = ['a','b','c']
# my_list = [10, 20, 30]
# arr = np.array([10,20,30])
# d = {'a':10, 'b':20, 'c':30}

# # s = pd.Series(data=my_list)
# # print(s)   #слева это метки

# # s = pd.Series(data=my_list, index = labels)
# # print(s)   #слева метки буквами, но все равно могу обращаться к элементам через индекс либо по букве

# # s = pd.Series(d)
# # print(s)


# ser1 = pd.Series([2,3,1,4], index = ['USA', 'Germany', 'Russia', 'Japan'])
# print(ser1)
# ser2 = pd.Series([1,2,5,4], index = ['USA', 'Germany', 'Italy', 'Japan'])
# print(ser2)

# # print(ser1['USA'])
# # print(ser1[:2])
# # print(ser1[ser1 <= 3])
# # iloc - поиск по позиции, loc - поиск по метке

# # print(ser1.iloc[2])
# # print(ser1.loc['Russia'])

# # print(ser1*2) умножение
# print(ser1.values)



# DATAFRAME 
# делать бэкапы, в конструкторе просто написать copy=True
# df = pd.DataFrame(
#     data=[[5,True,'x',2.7],
#           [8, True,'y',3.1],
#           [13, False,'z', np.NaN]],
#           index=['A', 'B', 'C'],
#           columns=['num','bool','str','real']
# )
# print(df)

# data = pd.read_csv("demodata.csv")
# print(data.shape)

# print(data.head(3)) #выводятся первые 3 строки, если не писать на вход число, то по-умолчанию выведутся первые 5
# print(data.tail(3))

# print(data.info())

# print(data.describe()) #выдает в каждом числовом столбце общее кол-во, среднее, стандартное отклоенение, мин, макс, 3 квартиля

# print(data.columns)

# чтобы посмотреть отдельный столбец, это ЧАЩЕ
# print(data["date"])

# либо просто через структуру
# print(data.date)

# print(data.head())
# print('\n')
# # с помощьб поиска по индексу обращусь от 1 до 3
# print(data.iloc[1:3])
# # а вот по метке (получили другое, т.к не по тому)
# print(data.loc[1:3])

# ищу все записи из столбца gains все отрицательные
# print(data[data['gains'] < 0])

# print(data[(data.weekdays == 'Wed') & data.up])

# вытащи все записи, где среда и истинна
# print(data.query('weekdays == "Wed" and up'))

# result = data.query('weekdays == "Sun" or prices < prices.mean() and gains < 0')
# print(result)
# print("Сумма доходов: ", result['gains'].sum())


# можно вытаскивать разные выборки
# print(data.sample()) #вытащит одну
# print(data.sample(n=3))

# print(data.sample(frac = 0.3)) # даст 30%, чтобы не считать

# есть еще is in

# если есть пропущенные данные, то их надо заполнять, чтобы считать числовые х-ки
# есть ф-ция dropna, она удалит все строчки, где есть хоть один NaN (но не очень, т.к может удалить много исходных данных)
# можно указать поля и порог df.dropna(axis =1,thresh=3)

# можно заполнить NaN какими-то значениями:
# df.fillna(0) заполнит нулями
# df.fillna(df.mean()) заполнит средним значением по столбцу

# практика
data = pd.read_csv("titanic.csv")
# print(data.info())
# print(data.columns)
# print(data.head())

# print(data[["Age", "Sex"]].head())
# print(data[data["Age"] > 79])

# data["Relatives"] = data["SibSp"] + data["Parch"]
# print(data.head(3))

# print(data[data['Survived'] == 1].groupby('Sex').value_counts())

# table = pd.pivot_table(data[['Sex', 'Survived']], index = 'Sex', columns = 'Survived', aggfunc=len)
# table = data[['Sex', 'Survived']].pivot_table(index = 'Sex', columns = 'Survived', aggfunc=len)
# print(table)

# data["Pclass"] = data['Pclass'].replace(to_replace = [1, 2, 3], value = ["very_cool", "cool", "worker"])
# print(data.head())
# table = pd.pivot_table(data[['Pclass', 'Survived']], index = 'Pclass', columns = 'Survived', aggfunc=len)
# print(table)

# ax = data.hist(column='Age', bins = 25)
# plt.show()

condition =  [
    (data['Fare'] < 25),
    (data['Fare'] >= 25) 
    ]
values = ['cheap', 'expensive']
data['CheapExp'] = np.select(condition, values)


data['NewCol'] = data['Fare'].apply(lambda x:'cheap' if x < 25 else 'expensive')
print(data.head())