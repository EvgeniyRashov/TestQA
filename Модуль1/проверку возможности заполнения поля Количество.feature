﻿#language: ru

@tree

Функционал: Заполнение количества при добавлении Услуги

Как Менеджер по закупкам я хочу
проверить возможность заполнения поля Количество
при добавлении Услуги в документ Заказ  

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Заполнение количества при добавлении Услуги


* Создание документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
* Заполнение таблично части документа
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000013' | 'Чайники'      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно '1С:Предприятие'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000019' | 'Bosch15'      |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
// падение
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '1 000,00'

	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '10'

* Проведения документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд
