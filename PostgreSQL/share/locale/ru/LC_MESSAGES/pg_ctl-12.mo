��    �        �   
      �      �     �  &   �     �       3   "     V     l  /        �  "   �  1   �  �   $  "   �  j   �  o   N     �  D   �  !   !  3   C  ?   w  H   �  D      C   E  E   �  ?   �  ?     >   O  9   �  L   �  B     E   X  �   �  0   #  F   T  >   �  B   �  I     %   g  <   �  O   �  7        R     Y     b  M   t  -   �  !   �  >     E   Q  C   �  y   �  9   U  D   �  C   �  D     E   ]  >   �  A   �  '   $  (   L  ,   u  7   �  2   �  6     >   D  *   �  /   �  7   �  4     %   K  %   q  1   �  0   �  #   �       4   <  7   q  2   �  6   �  1     0   E  ,   v  .   �  3   �  7         >   +   ^   1   �   6   �   6   �   1   *!  *   \!  "   �!  7   �!  "   �!  $   "  J   *"     u"     �"  3   �"  0   �"     #  #    #  !   D#     f#  !   �#  $   �#      �#  -   �#     $  4   ;$  %   p$  $   �$  "   �$  !   �$  u    %  F   v%     �%  7   �%  )   	&  k   3&  `   �&  %    '  &   &'     M'  d   U'     �'  /   �'  &   	(  0   0(  .   a(  -   �(     �(     �(  &   �(      )  ,   /)  (   \)     �)  %   �)     �)     �)     �)     �)     	*     *     ,*     B*  #   S*     w*     �*     �*     �*     �*      �*  "    +     #+  �  B+  C   -      b-  G   �-  >   �-  B   
.  ]   M.  "   �.     �.  N   �.  !   8/  6   Z/  G   �/  �   �/  6   �0  �   �0  �   �1  1   82  j   j2  )   �2  N   �2  `   N3  g   �3  y   4  Y   �4  v   �4  E   b5  O   �5  \   �5  Q   U6  �   �6  {   �7  U   8  �   [8  C   -9  |   q9  p   �9  d   _:  �   �:  G   J;  f   �;  �   �;  h   �<     &=     5=  )   D=  �   n=  K   >  0   R>  {   �>  �   �>  �   �?    '@  k   >A     �A  �   *B  �   �B  �   .C  �   �C  {   TD  M   �D  7   E  a   VE  r   �E  c   +F  h   �F  o   �F  L   hG  L   �G  e   H  k   hH  =   �H  H   I  `   [I  T   �I  C   J  9   UJ  f   �J  v   �J  g   mK  l   �K  ]   BL  `   �L  J   M  Z   LM  n   �M  _   N  <   vN  S   �N  X   O  V   `O  t   �O  e   ,P  R   �P  2   �P  f   Q  9   Q  G   �Q  �   R  '   �R  '   �R  ^   �R  c   8S  "   �S  g   �S  P   'T  5   xT  -   �T  >   �T  <   U  T   XU     �U  h   �U  >   6V  >   uV  <   �V  <   �V  �   .W  t   �W  "   `X  X   �X  I   �X  �   &Y  �   �Y  M   �Z  [   �Z     A[  �   ^[  2   \  p   O\  V   �\  l   ]  J   �]  K   �]  )   ^  "   E^  =   h^  C   �^  Z   �^  J   E_  K   �_  W   �_  5   4`     j`     �`     �`     �`  "   �`  ,   �`  /   ,a  c   \a     �a  $   �a  "   b  B   %b  a   hb  5   �b  D    c  1   Ec     _   0   *   @       �   ,   S   �   )   5       K   �       9   J   :       P      U          &   `   E   6   2          {   �           -      4      �       M       �      |   R   W               I   f   �   �              �   N      y       V          /              �          �   !   8   u   z   �   x       #   �      n   +       r       T      c           7   L               b       �   >   B   �      �   g   a   %      "   �              p       ]   t   q   �   .       �       C   �       d      [   ^      O   <               X   �   
           (           �           Z   k   $   i   �   j       e          ?   �              ;           v       H       l       �       �   '   \   Y          �       F   o   �   m   �   A   }       w   �   =       Q      �                    	   h   �                     s   D   G          ~   1          3    
Allowed signal names for kill:
 
Common options:
 
Options for register and unregister:
 
Options for start or restart:
 
Options for stop or restart:
 
Report bugs to <pgsql-bugs@lists.postgresql.org>.
 
Shutdown modes are:
 
Start types are:
   %s init[db]   [-D DATADIR] [-s] [-o OPTIONS]
   %s kill       SIGNALNAME PID
   %s logrotate  [-D DATADIR] [-s]
   %s promote    [-D DATADIR] [-W] [-t SECS] [-s]
   %s register   [-D DATADIR] [-N SERVICENAME] [-U USERNAME] [-P PASSWORD]
                    [-S START-TYPE] [-e SOURCE] [-W] [-t SECS] [-s] [-o OPTIONS]
   %s reload     [-D DATADIR] [-s]
   %s restart    [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
                    [-o OPTIONS] [-c]
   %s start      [-D DATADIR] [-l FILENAME] [-W] [-t SECS] [-s]
                    [-o OPTIONS] [-p PATH] [-c]
   %s status     [-D DATADIR]
   %s stop       [-D DATADIR] [-m SHUTDOWN-MODE] [-W] [-t SECS] [-s]
   %s unregister [-N SERVICENAME]
   -?, --help             show this help, then exit
   -D, --pgdata=DATADIR   location of the database storage area
   -N SERVICENAME  service name with which to register PostgreSQL server
   -P PASSWORD     password of account to register PostgreSQL server
   -S START-TYPE   service start type to register PostgreSQL server
   -U USERNAME     user name of account to register PostgreSQL server
   -V, --version          output version information, then exit
   -W, --no-wait          do not wait until operation completes
   -c, --core-files       allow postgres to produce core files
   -c, --core-files       not applicable on this platform
   -e SOURCE              event source for logging when running as a service
   -l, --log=FILENAME     write (or append) server log to FILENAME
   -m, --mode=MODE        MODE can be "smart", "fast", or "immediate"
   -o, --options=OPTIONS  command line options to pass to postgres
                         (PostgreSQL server executable) or initdb
   -p PATH-TO-POSTGRES    normally not necessary
   -s, --silent           only print errors, no informational messages
   -t, --timeout=SECS     seconds to wait when using -w option
   -w, --wait             wait until operation completes (default)
   auto       start service automatically during system startup (default)
   demand     start service on demand
   fast        quit directly, with proper shutdown (default)
   immediate   quit without complete shutdown; will lead to recovery on restart
   smart       quit after all clients have disconnected
  done
  failed
  stopped waiting
 %s is a utility to initialize, start, stop, or control a PostgreSQL server.

 %s: -S option not supported on this platform
 %s: PID file "%s" does not exist
 %s: WARNING: cannot create restricted tokens on this platform
 %s: WARNING: could not locate all job object functions in system API
 %s: another server might be running; trying to start server anyway
 %s: cannot be run as root
Please log in (using, e.g., "su") as the (unprivileged) user that will
own the server process.
 %s: cannot promote server; server is not in standby mode
 %s: cannot promote server; single-user server is running (PID: %ld)
 %s: cannot reload server; single-user server is running (PID: %ld)
 %s: cannot restart server; single-user server is running (PID: %ld)
 %s: cannot rotate log file; single-user server is running (PID: %ld)
 %s: cannot set core file size limit; disallowed by hard limit
 %s: cannot stop server; single-user server is running (PID: %ld)
 %s: control file appears to be corrupt
 %s: could not access directory "%s": %s
 %s: could not allocate SIDs: error code %lu
 %s: could not create log rotation signal file "%s": %s
 %s: could not create promote signal file "%s": %s
 %s: could not create restricted token: error code %lu
 %s: could not determine the data directory using command "%s"
 %s: could not find own program executable
 %s: could not find postgres program executable
 %s: could not get LUIDs for privileges: error code %lu
 %s: could not get token information: error code %lu
 %s: could not open PID file "%s": %s
 %s: could not open log file "%s": %s
 %s: could not open process token: error code %lu
 %s: could not open service "%s": error code %lu
 %s: could not open service manager
 %s: could not read file "%s"
 %s: could not register service "%s": error code %lu
 %s: could not remove log rotation signal file "%s": %s
 %s: could not remove promote signal file "%s": %s
 %s: could not send log rotation signal (PID: %ld): %s
 %s: could not send promote signal (PID: %ld): %s
 %s: could not send reload signal (PID: %ld): %s
 %s: could not send signal %d (PID: %ld): %s
 %s: could not send stop signal (PID: %ld): %s
 %s: could not start server
Examine the log output.
 %s: could not start server due to setsid() failure: %s
 %s: could not start server: %s
 %s: could not start server: error code %lu
 %s: could not start service "%s": error code %lu
 %s: could not unregister service "%s": error code %lu
 %s: could not write log rotation signal file "%s": %s
 %s: could not write promote signal file "%s": %s
 %s: database system initialization failed
 %s: directory "%s" does not exist
 %s: directory "%s" is not a database cluster directory
 %s: invalid data in PID file "%s"
 %s: missing arguments for kill mode
 %s: no database directory specified and environment variable PGDATA unset
 %s: no operation specified
 %s: no server running
 %s: old server process (PID: %ld) seems to be gone
 %s: option file "%s" must have exactly one line
 %s: out of memory
 %s: server did not promote in time
 %s: server did not start in time
 %s: server does not shut down
 %s: server is running (PID: %ld)
 %s: service "%s" already registered
 %s: service "%s" not registered
 %s: single-user server is running (PID: %ld)
 %s: the PID file "%s" is empty
 %s: too many command-line arguments (first is "%s")
 %s: unrecognized operation mode "%s"
 %s: unrecognized shutdown mode "%s"
 %s: unrecognized signal name "%s"
 %s: unrecognized start type "%s"
 HINT: The "-m fast" option immediately disconnects sessions rather than
waiting for session-initiated disconnection.
 If the -D option is omitted, the environment variable PGDATA is used.
 Is server running?
 Please terminate the single-user server and try again.
 Server started and accepting connections
 The program "%s" is needed by %s but was not found in the
same directory as "%s".
Check your installation.
 The program "%s" was found by "%s"
but was not the same version as %s.
Check your installation.
 Timed out waiting for server startup
 Try "%s --help" for more information.
 Usage:
 WARNING: online backup mode is active
Shutdown will not complete until pg_stop_backup() is called.

 Waiting for server startup...
 cannot duplicate null pointer (internal error)
 child process exited with exit code %d child process exited with unrecognized status %d child process was terminated by exception 0x%X child process was terminated by signal %d: %s command not executable command not found could not change directory to "%s": %m could not find a "%s" to execute could not get current working directory: %s
 could not identify current directory: %m could not read binary "%s" could not read symbolic link "%s": %m invalid binary "%s" out of memory out of memory
 pclose failed: %m server promoted
 server promoting
 server shutting down
 server signaled
 server signaled to rotate log file
 server started
 server starting
 server stopped
 starting server anyway
 trying to start server anyway
 waiting for server to promote... waiting for server to shut down... waiting for server to start... Project-Id-Version: pg_ctl (PostgreSQL current)
Report-Msgid-Bugs-To: pgsql-bugs@lists.postgresql.org
PO-Revision-Date: 2020-05-06 11:07+0300
Last-Translator: Alexander Lakhin <exclusion@gmail.com>
Language-Team: Russian <pgsql-ru-general@postgresql.org>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
 
Разрешённые сигналы для команды kill:
 
Общие параметры:
 
Параметры для регистрации и удаления:
 
Параметры запуска и перезапуска:
 
Параметры остановки и перезапуска:
 
Об ошибках сообщайте по адресу <pgsql-bugs@lists.postgresql.org>.
 
Режимы остановки:
 
Типы запуска:
   %s init[db]   [-D КАТАЛОГ-ДАННЫХ] [-s] [-o ПАРАМЕТРЫ]
   %s kill       СИГНАЛ PID
   %s logrotate  [-D КАТАЛОГ-ДАННЫХ] [-s]
   %s promote    [-D КАТАЛОГ-ДАННЫХ] [-W] [-t СЕК] [-s]
   %s register   [-D КАТАЛОГ-ДАННЫХ] [-N ИМЯ-СЛУЖБЫ] [-U ПОЛЬЗОВАТЕЛЬ] [-P ПАРОЛЬ]
                    [-S ТИП-ЗАПУСКА] [-e ИСТОЧНИК] [-W] [-t СЕК] [-s] [-o ПАРАМЕТРЫ]
   %s reload     [-D КАТАЛОГ-ДАННЫХ] [-s]
   %s restart    [-D КАТАЛОГ-ДАННЫХ] [-m РЕЖИМ-ОСТАНОВКИ] [-W] [-t СЕК] [-s]
                    [-o ПАРАМЕТРЫ] [-c]
   %s start      [-D КАТАЛОГ-ДАННЫХ] [-l ИМЯ-ФАЙЛА] [-W] [-t СЕК] [-s]
                    [-o ПАРАМЕТРЫ] [-p ПУТЬ] [-c]
   %s status     [-D КАТАЛОГ-ДАННЫХ]
   %s stop       [-D КАТАЛОГ-ДАННЫХ] [-m РЕЖИМ-ОСТАНОВКИ] [-W] [-t СЕК] [-s]
   %s unregister [-N ИМЯ-СЛУЖБЫ]
   -?, --help             показать эту справку и выйти
   -D, --pgdata=КАТАЛОГ   расположение хранилища баз данных
   -N ИМЯ-СЛУЖБЫ   имя службы для регистрации сервера PostgreSQL
   -P ПАРОЛЬ       пароль учётной записи для регистрации сервера PostgreSQL
   -S ТИП-ЗАПУСКА  тип запуска службы сервера PostgreSQL
   -U ПОЛЬЗОВАТЕЛЬ имя пользователя для регистрации сервера PostgreSQL
   -V, --version          показать версию и выйти
   -W, --no-wait          не ждать завершения операции
   -c, --core-files       указать postgres создавать дампы памяти
   -c, --core-files       неприменимо на этой платформе
   -e ИСТОЧНИК            источник событий, устанавливаемый при записи в журнал,
                         когда сервер работает в виде службы
   -l, --log=ФАЙЛ         записывать (или добавлять) протокол сервера в ФАЙЛ.
   -m, --mode=РЕЖИМ       может быть "smart", "fast" или "immediate"
   -o, --options=ПАРАМЕТРЫ  передаваемые postgres (исполняемому файлу PostgreSQL)
                         или initdb параметры командной строки
   -p ПУТЬ-К-POSTGRES     обычно не требуется
   -s, --silent           выводить только ошибки, без информационных сообщений
   -t, --timeout=СЕК      время ожидания при использовании параметра -w
   -w, --wait             ждать завершения операции (по умолчанию)
   auto       запускать службу автоматически при старте системы (по умолчанию)
   demand     запускать службу по требованию
   fast        закончить сразу, в штатном режиме (по умолчанию)
   immediate   закончить немедленно, в экстренном режиме; влечёт за собой
              восстановление при перезапуске
   smart       закончить работу после отключения всех клиентов
  готово
  ошибка
  прекращение ожидания
 %s - это утилита для инициализации, запуска, остановки и управления сервером PostgreSQL.

 %s: параметр -S не поддерживается в этой ОС
 %s: файл PID "%s" не существует
 %s: ПРЕДУПРЕЖДЕНИЕ: в этой ОС нельзя создавать ограниченные маркеры
 %s: ПРЕДУПРЕЖДЕНИЕ: не удалось найти все функции для работы с задачами в системном API
 %s: возможно, уже работает другой сервер; всё же пробуем запустить этот сервер
 Запускать %s от имени root нельзя.
Пожалуйста, переключитесь на обычного пользователя (например,
используя "su"), который будет запускать серверный процесс.
 %s: повысить сервер нельзя - он работает не в режиме резерва
 %s: повысить сервер с PID %ld нельзя - он выполняется в монопольном режиме
 %s: перезагрузить сервер с PID %ld нельзя - он запущен в монопольном режиме
 %s: перезапустить сервер с PID %ld нельзя - он запущен в монопольном режиме
 %s: не удалось прокрутить файл журнала; сервер работает в монопольном режиме (PID: %ld)
 %s: не удалось ограничить размер дампа памяти; запрещено жёстким ограничением
 %s: остановить сервер с PID %ld нельзя - он запущен в монопольном режиме
 %s: управляющий файл, по-видимому, испорчен
 %s: нет доступа к каталогу "%s": %s
 %s: не удалось подготовить структуры SID (код ошибки: %lu)
 %s: не удалось создать файл "%s" с сигналом к прокрутке журнала: %s
 %s: не удалось создать файл "%s" с сигналом к повышению: %s
 %s: не удалось создать ограниченный маркер (код ошибки: %lu)
 %s: не удалось определить каталог данных с помощью команды "%s"
 %s: не удалось найти свой исполняемый файл
 %s: не удалось найти исполняемый файл postgres
 %s: не удалось получить LUID для привилегий (код ошибки: %lu)
 %s: не удалось получить информацию о маркере (код ошибки: %lu)
 %s: не удалось открыть файл PID "%s": %s
 %s: не удалось открыть файл журнала "%s": %s
 %s: не удалось открыть маркер процесса (код ошибки: %lu)
 %s: не удалось открыть службу "%s" (код ошибки: %lu)
 %s: не удалось открыть менеджер служб
 %s: не удалось прочитать файл "%s"
 %s: не удалось зарегистрировать службу "%s" (код ошибки: %lu)
 %s: ошибка при удалении файла "%s" с сигналом к прокрутке журнала: %s
 %s: ошибка при удалении файла "%s" с сигналом к повышению: %s
 %s: не удалось отправить сигнал к прокрутке журнала (PID: %ld): %s
 %s: не удалось отправить сигнал к повышению (PID: %ld): %s
 %s: не удалось отправить сигнал перезагрузки (PID: %ld): %s
 %s: не удалось отправить сигнал %d (PID: %ld): %s
 %s: не удалось отправить сигнал остановки (PID: %ld): %s
 %s: не удалось запустить сервер
Изучите протокол выполнения.
 %s: не удалось запустить сервер из-за ошибки в setsid(): %s
 %s: не удалось запустить сервер: %s
 %s: не удалось запустить сервер (код ошибки: %lu)
 %s: не удалось запустить службу "%s" (код ошибки: %lu)
 %s: ошибка при удалении службы "%s" (код ошибки: %lu)
 %s: не удалось записать файл "%s" с сигналом к прокрутке журнала: %s
 %s: не удалось записать файл "%s" с сигналом к повышению: %s
 %s: сбой при инициализации системы баз данных
 %s: каталог "%s" не существует
 %s: каталог "%s" не содержит структуры кластера баз данных
 %s: неверные данные в файле PID "%s"
 %s: отсутствуют аргументы для режима kill
 %s: каталог баз данных не указан и переменная окружения PGDATA не установлена
 %s: команда не указана
 %s: сервер не работает
 %s: похоже, что старый серверный процесс (PID: %ld) исчез
 %s: в файле параметров "%s" должна быть ровно одна строка
 %s: нехватка памяти
 %s: повышение сервера не завершилось за отведённое время
 %s: сервер не запустился за отведённое время
 %s: сервер не останавливается
 %s: сервер работает (PID: %ld)
 %s: служба "%s" уже зарегистрирована
 %s: служба "%s" не зарегистрирована
 %s: сервер работает в монопольном режиме (PID: %ld)
 %s: файл PID "%s" пуст
 %s: слишком много аргументов командной строки (первый: "%s")
 %s: нераспознанный режим работы "%s"
 %s: неизвестный режим остановки "%s"
 %s: нераспознанное имя сигнала "%s"
 %s: нераспознанный тип запуска "%s"
 ПОДСКАЗКА: Параметр "-m fast" может сбросить сеансы принудительно,
не дожидаясь, пока они завершатся сами.
 Если параметр -D опущен, используется переменная окружения PGDATA.
 Запущен ли сервер?
 Пожалуйста, остановите его и повторите попытку.
 Сервер запущен и принимает подключения
 Программа "%s" необходима для %s, но не найдена
в каталоге "%s".
Проверьте правильность установки СУБД.
 Программа "%s" найдена в "%s",
но её версия отличается от версии %s.
Проверьте правильность установки СУБД.
 Превышено время ожидания запуска сервера
 Для дополнительной информации попробуйте "%s --help".
 Использование:
 ПРЕДУПРЕЖДЕНИЕ: активен режим копирования "на ходу"
Выключение произойдёт только при вызове pg_stop_backup().

 Ожидание запуска сервера...
 попытка дублирования нулевого указателя (внутренняя ошибка)
 дочерний процесс завершился с кодом возврата %d дочерний процесс завершился с нераспознанным состоянием %d дочерний процесс прерван исключением 0x%X дочерний процесс завершён по сигналу %d: %s неисполняемая команда команда не найдена не удалось перейти в каталог "%s": %m не удалось найти запускаемый файл "%s" не удалось определить текущий рабочий каталог: %s
 не удалось определить текущий каталог: %m не удалось прочитать исполняемый файл "%s" не удалось прочитать символическую ссылку "%s": %m неверный исполняемый файл "%s" нехватка памяти нехватка памяти
 ошибка pclose: %m сервер повышен
 сервер повышается
 сервер останавливается
 сигнал отправлен серверу
 сигнал для прокрутки файла журнала отправлен серверу
 сервер запущен
 сервер запускается
 сервер остановлен
 сервер запускается, несмотря на это
 производится попытка запуска сервера в любом случае
 ожидание повышения сервера... ожидание завершения работы сервера... ожидание запуска сервера... 