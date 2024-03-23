#Область ПрограммныйИнтерфейс
Процедура ДополнитьФорму (Форма) Экспорт
	
	ИмяФормы = Форма.ИмяФормы;
	
	Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
		ДобавитьПолеСогласованнаяСкидка(Форма);
		ДобавитьКомандуПересчитать(Форма);
	ИначеЕсли  ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда  
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма);
	ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда
		ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
	ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда
		ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);
	ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда	
        ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма);
	КонецЕсли;
	
КонецПроцедуры 

Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма)
	ПолеВвода = Форма.Элементы.Добавить("КонтактноеЛицо", Тип ("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.нтл_КонтактноеЛицо";  
	
КонецПроцедуры  

Процедура ДобавитьПолеСогласованнаяСкидка(Форма)
	
	ПолеВвода = Форма.Элементы.Добавить("нтл_СогласованнаяСкидка", Тип ("ПолеФормы"), Форма.Элементы.ГруппаШапкаЛево);
	ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	ПолеВвода.ПутьКДанным = "Объект.нтл_СогласованнаяСкидка";
	
КонецПроцедуры 

Процедура ДобавитьКомандуПересчитать(Форма)
	
	 КомандаПересчитать = Форма.Команды.Добавить("нтл_Пересчитать"); 
	 КомандаПересчитать.Заголовок = "Пересчитать";
	 КомандаПересчитать.Действие = "нтл_КомандаПересчитать";
	 
	 КнопкаКоманды = Форма.Элементы.Добавить("КнопкаПересчитать", Тип("КнопкаФормы"), Форма.Элементы.ФормаКоманднаяПанель);
	 КнопкаКоманды.ИмяКоманды = "нтл_Пересчитать";
	 КнопкаКоманды.Вид = ВидКнопкиФормы.ОбычнаяКнопка; 
	 
 КонецПроцедуры 
 
Процедура ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента(Форма)
	
	ПолеВвода = Форма.Элементы.Вставить("нтл_КонтактноеЛицо", Тип ("ПолеФормы"), ,Форма.Элементы.СуммаДокумента);
    ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;  
	ПолеВвода.Заголовок = "Контактное лицо";
	ПолеВвода.ПутьКДанным = "Объект.нтл_КонтактноеЛицо";  
	
КонецПроцедуры

#КонецОбласти