# Лабораторная работа 4_ Java для работы с XML-документами
Цель работы: сформировать навыки работы с технологиями Java по
разбору XML-документов.
Задание:
1. Разработайте схему XML-документа (XSD) для хранения:
1. бинарного дерева;
2. списка студентов;
3. списка лекарств.
2. Напишите программы, которые ЧИТАЮТ и ПИШУТ
   соответствующие файлы, используя:
4. DOM- и SAX-парсеры сторонних разработчиков
   или
5. JAXP (поверх DOM и SAX).
3. Разработайте программу, которая подсчитает количество
   уникальных локальных имен элементов в XML-документе, для упрощения
   игнорируя имя пространства имен (можно взять любой готовый пример XML-
   документа).
4. Примените синтаксический анализатор Java XML при объявлении
   сотрудников компании. У каждого сотрудника есть уникальный
   идентификатор, имя и фамилия, возраст и зарплата. Сотрудники разделены
   идентификаторами. Создайте новый файл с именем Employees.xml.
   Выполните далее один из пунктов анализа:
6. Разберите XML-файл с помощью парсера DOM. Реализация парсера
   DOM включена в выпуск JDK. Объектная модель документа предоставляет
   API-интерфейсы, которые позволяют создавать, изменять, удалять и
   переупорядочивать узлы. Парсер DOM анализирует весь XML-документ и
   загружает XML-содержимое в древовидную структуру. Используя классы
   Node и NodeList, можно извлекать и изменять содержимое файла XML.
7. Разберите XML-файл с помощью SAX-парсера. SAX – это API-
   интерфейс анализатора последовательного доступа, основанный на событиях,
   который предоставляет механизм для чтения данных из XML-документа,
   альтернативный предоставляемому парсером DOM. Синтаксическому
   анализатору SAX необходимо сообщать только о каждом событии
   синтаксического анализа по мере его возникновения, а минимальный объем
   памяти, необходимый для синтаксического анализатора SAX,
   пропорционален максимальной глубине XML-файла.
8. Выполните синтаксический анализ XML-файла с помощью
   анализатора StAX. Streaming API for XML (StAX) – это интерфейс
   прикладного программирования для чтения и записи XML-документов.
   Парсер StAX – это анализатор XML, который может обрабатывать
   древовидные структурированные данные по мере их поступления. StAX был
   разработан как посредник между парсерами DOM и SAX. В анализаторе StAX
   точка входа – это курсор, который представляет точку в документе XML.
   Приложение перемещает курсор вперед, чтобы получить информацию
   из анализатора. Напротив, синтаксический анализатор SAX отправляет
   данные в приложение, а не извлекает их.
9. Проанализируйте XML с помощью JAXB. Архитектура Java
   для связывания XML (JAXB) обеспечивает быстрый и удобный способ
   связывания схем XML и представлений Java, облегчая разработчикам Java
   включение данных XML и функций обработки в приложения Java. В рамках
   этого процесса JAXB предоставляет методы для демаршалинга (чтения)
   документов экземпляра XML в деревья контента Java и последующего
   маршалинга (записи) деревьев контента Java обратно в документы экземпляра
   XML. JAXB также предоставляет способ создания схемы XML из объектов
   Java.
10. Аннотации JAXB, определенные в пакете
    javax.xml.bind.annotation, могут быть использованы для настройки
    элементов программы Java на отображение схемы XML.
    Отчет должен содержать текст программного кода выполненных
    заданий и скриншоты результатов работы.
    При оформлении кода использование комментариев обязательно.