﻿Функция Удалить_ПолучитьТекстHTMLMarkdown(ТекстСодержания) Экспорт
	
	//РезультатФункции = узОбщийМодульСервер.ПолучитьМакетыMardown(ТекстСодержания);
	// 
	//ТекстHTMLМакет = РезультатФункции.ТекстHTMLМакет;
	//Возврат ТекстHTMLМакет;
КонецФункции 

Функция УстановитьТекстВБуферОбмена(ТекстДляКопирования) Экспорт
    пОбъект = Новый COMОбъект("htmlfile");
    пОбъект.ParentWindow.ClipboardData.Setdata("Text", ТекстДляКопирования);
	
	пТекстСообщения = узОбщийМодульСервер.ПолучитьТекстСообщения("Скопирован в буфер: %1",86);
	пТекстСообщения = СтрШаблон(пТекстСообщения,ТекстДляКопирования);
	ПоказатьОповещениеПользователя(пТекстСообщения);
	
    Возврат ТекстДляКопирования;
КонецФункции 