﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Продажи' 'Документы продаж'
Тогда открылось окно 'Документы продаж'
И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруРасходТовара'
Тогда открылось окно 'Продажа товара (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Корнет ЗАО'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Средний'
И в таблице "Товары" я нажимаю на кнопку с именем 'КомандаПодбор'
Тогда открылось окно 'Подбор товара'
И я нажимаю на кнопку с именем 'Отмена'
Тогда открылось окно 'Продажа товара (создание) *'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице  "Список" я перехожу на один уровень вниз
И в таблице "Список" я перехожу к строке:
	| 'Артикул' | 'Код'       | 'Количество' | 'Наименование' |
	| 'Т78'     | '000000032' | '230,00'     | 'Товар1 '      |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Продажа товара (создание) *'
И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Продажа товара (создание) *' в течение 20 секунд
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'EUR'
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Продажа товара (создание) *' в течение 20 секунд
