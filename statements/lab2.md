# Лабораторная работа 2 Синхронизация потоков

Цель работы: сформировать навыки работы с технологиями Java
Threads.

Задание:
1. Объявите и инициализируйте глобальные данные/переменные,
которые требуют синхронизации (например «count»). Объявите и
инициализируйте связанный мьютекс.
Создайте потоки A и B для работы.
Поток А
- Работает до момента, когда должно произойти определенное условие
(например, «счетчик» должен достичь указанного значения).
- Блокирует связанный мьютекс и проверяет значение глобальной
переменной.
- Вызовает pthread_cond_wait(), чтобы выполнить блокирующее
ожидание сигнала от Thread-B. Обратите внимание, что вызов
pthread_cond_wait() автоматически и атомарно разблокирует связанную
переменную мьютекса, чтобы она могла использоваться Thread-B.
- При получении сигнала поток А просыпается, мьютекс
автоматически блокируется атомарно.
Поток B
- Меняет значение глобальной переменной, которую ожидает
Thread-A.
- Проверяет значение глобальной переменной ожидания Thread-A.
Если оно удовлетворяет желаемому условию, сигнализирует Thread-A.
- Разблокирует мьютекс.
2. Разработайте многопоточное приложение (использующее общую
переменную):
- в потоке объявлена приватная переменная, например, i=0. При
выполнении потока i инкриминируется, к примеру, 100 раз. При каждом
инкременте на консоль выводится значение i;
- основная программа создает два потока. Необходимо
проанализировать изменение i.
Выясните, как изменится поведение программы, если i объявить как
локальную переменную (переменная метода run()).
3. Разработайте многопоточное приложение:
- один поток считывает текст собственной программы;
- второй поток получает считанную строку, анализирует вхождение
образца и по условию выводит строку на экран.
4. Разработайте многопоточное приложение, реализующее кольцевой
буфер в задаче «производитель – потребитель». Программа должна порождать
процессы «производители» количеством K>1 и процессы «потребители» –
M>1. Размер буфера N элементов. Частота работы производителя меньше в
среднем в 10 раз частоты работы потребителя. Частоты задаются случайно.
Производитель пишет в буфер в среднем 10 значений.
Отчет должен содержать текст программного кода выполненных
заданий и скриншоты результатов работы.
При оформлении кода использование комментариев обязательно.