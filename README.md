# Test task TechSup L3

1. Написать BASH-скрипт который скачивает файл
https://raw.githubusercontent.com/GreatMedivack/files/master/list.out из репозитория.

2. Создает на его основе два файла с именами SERVER_DATE_failed.out и SERVER_DATE_running.out,
где SERVER это название сервера (передается в скрипт в качестве аргумента, при отсутствии
аргумента должно выставляться какое-либо значение по умолчанию), а DATE текущая дата в
формате ДЕНЬ_МЕСЯЦ_ГОД (например 01_09_1939).

- Первый файл должен содержать только имена тех сервисов (столбец NAME), у которых статус
(столбец STATUS) равен Error или CrashLoopBackOff.

- Второй файл должен содержать только имена тех сервисов, у которых статус равен Running.

*В созданных файлах должны находиться только имена сервисов, данные из других столбцов
исходного файла не нужны.*

Удаляет из имен сервисов постфиксы формата -xxxxxxxxxx-xxxxxx если они там есть (например,
вместо demomed-analysis-service-6f955bff79-cqjv9 должно получиться demomed-analysis-service).

3. Создает файл SERVER_DATE_report.out с правами на чтение для всех пользователей со
следующими строками:

- Количество работающих сервисов: 0 *# Здесь должно отображаться количество сервисов из
файла SERVER_DATE_running.out*

- Количество сервисов с ошибками: 0 *# Здесь должно отображаться количество сервисов из
файла SERVER_DATE_failed.out*

- Имя системного пользователя: User *# Здесь должно отображаться имя пользователя,
запустившего скрипт*

- Дата: 01/09/20 *# Здесь должна отображаться текущая дата*

4. Запаковывает все полученные файлы в архив c именем SERVER_DATE и складывает его в папку
archives если архива с таким именем еще не существует.

5. Удаляет все файлы кроме содержимого папки archives

6. Выполняет проверку архива на повреждение и выводит сообщение об успешном завершении
работы или ошибке.

7. Выполняет проверку архива на повреждение и выводит сообщение об успешном завершении
работы или ошибке.
