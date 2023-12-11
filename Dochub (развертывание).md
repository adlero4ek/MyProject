## Установка программного обеспечения	
- Устанавливаем Vagrant https://developer.hashicorp.com/vagrant/downloads (vagrant_2.4.0_windows_amd64.msi) (требуется VPN)
- Устанавливаем Visual Studio Code (https://code.visualstudio.com)
- Устанавливаем Git (https://git-scm.com/downloads)
- Скачиваем образ focal64 Vagrant box (https://app.vagrantup.com/ubuntu/boxes/focal64)
- Устанавливаем IntelliJ IDEA (https://www.jetbrains.com/idea/download/?section=windows), например, IntelliJ IDEA Community Edition
- Устанавливаем VirtualBox (https://www.virtualbox.org/wiki/Downloads)

## Создание проекта
- Создаем каталог проекта, например, "D:\Dochub\"
- Запускаем VS Code, в котором запускаем терминал (`CTRL+~`) и клонируем репозиторий, используя команду `git clone --recurse-submodules https://github.com/cu3blukekc/SwampHub.git`. В результате - клонирован репозиторий и каталоге "D:\Dochub\" создан подкаталог `SwampHub`
- Для обновления файлов проекта можно использовать команду `git submodule init && git submodule update`
- Размещаем в каталоге проекта `D:\Dochub\SwampHub\` файл образа focal64 Vagrant box, переименовав его в `Vagrant.box`
- Создаем в каталоге проекта `D:\Dochub\SwampHub\` файл настройками образа `Vagrant` следующего содержания:
```   
   Vagrant.configure("2") do |config|
     config.vm.box = "ubuntu/focal64"
   
     config.vm.provider "virtualbox" do |vb|
       vb.customize ["modifyvm", :id, "--ioapic", "on"]
       vb.customize ["modifyvm", :id, "--memory", "8192"]
       vb.customize ["modifyvm", :id, "--cpus", "2"]
     end
   
     portSSH = 2225
     
     portMetamodel = 8081
     portManifest = 8082
     portBackEnd = 3030
     portFrontEnd = 8080
     portPlantUML = 9000
     
     docker_compose_version ="2.9.0"
   
     config.vm.hostname = "vagrant-swamphub"
     config.vm.network "private_network", ip: "192.168.44.10"
   
     config.vm.network(:forwarded_port, guest: 22, host: portSSH,id: 'ssh')
     
     config.vm.network(:forwarded_port, guest: portFrontEnd, host: portFrontEnd)
     config.vm.network(:forwarded_port, guest: portMetamodel, host: portMetamodel)
     config.vm.network(:forwarded_port, guest: portManifest, host: portManifest)
     config.vm.network(:forwarded_port, guest: portBackEnd, host: portBackEnd)
     config.vm.network(:forwarded_port, guest: portPlantUML, host: portPlantUML)
     
     config.vm.provision :shell, inline: "apt-get update"
     config.vm.provision :shell, inline: "export DOCKER_BUILDKIT=1" # or configure in daemon.json
     config.vm.provision :shell, inline: "export COMPOSE_DOCKER_CLI_BUILD=1"
   
     # Avoid plugin conflicts
     if Vagrant.has_plugin?("vagrant-vbguest") then
       config.vbguest.auto_update = false
     end
  end   
```   
- Запускаем VS Code в каталоге проекта.
- Запускаем терминал (`CTRL+~`) и вводим команду `vagrant box add --name ubuntu/focal64 Vagrant.box`. 
- Дождаемся сообщение об успешном завершении операции:
```
==> box: Box file was not detected as metadata. Adding it directly...
==> box: Adding box 'ubuntu/focal64' (v0) for provider:
box: Unpacking necessary files from: file://D:/Dochub/SwampHub/Vagrant.box
box:
==> box: Successfully added box 'ubuntu/focal64' (v0) for ''!
```
- Проверяем список доступных виртуальных машин, используя команду `vagrant box list`. В списке должна быть вирутальная машина
`ubuntu/focal64 (virtualbox, 0)`. Файл `Vagrant.box` можно удалять или переносить в другой каталог.

## Создаение виртуальной машины 
- Запускаем VS Code в каталоге проекта
- Запускаем терминал (`CTRL+~`) и вводим команду `vagrant plugin install vagrant-docker-compose` для установки плагина (требуется VPN)
- Размещаем в каталоге проекта создаем файл `.env` следующего содержания `VUE_APP_DOCHUB_RELOAD_SECRET=[КЛЮЧ]`
- Устанавливаем вариант LF вместо CRLF параметра "Select end of line sequence" (`CTRL+SHIFT+P` и ввести строку `Change All End Of Line Sequence`) для файлов:
  - reload_backend.sh
  - update.sh
  - ./scripts/build.sh
  - ./scripts/copy.sh
  - ./scripts/install.sh
  - ./scripts/run.sh
- Вводим команду `vagrant up`. Результатом будет созданная вирутальная машина, которая отображается в Oracle VM VirtualBox с именем `SwampHub_defaul_*` и созданный 
  каталог `D:\Dochub\SwampHub\.vagrant` и отобразится сообщение:
```
  ==> default: Setting hostname...
  ==> default: Configuring and enabling network interfaces...
  ==> default: Mounting shared folders...
  default: /vagrant => D:/Dev/Dochub/SwampHub
```
  
## Сборка проекта
- Запускаем в Oracle VM VirtualBox и переходим в виртуальную машину с именем `SwampHub_defaul_*` (команда "Показать")
- Вводим логин и пароль: vagrant / vagrant
- Переходим в каталог `cd /vagrant`
- Запускаем скрипт обновления `./update.sh` (ожидаем завершения)
- Запускаем скрипт установки `./scripts/install.sh` (ожидаем завершения)
- Выходим из под администратора командой `exit`, вводим логин и пароль: vagrant / vagrant и ожидаем окончания установки docker (ожидаем появления сообщения `hello-world`)
- Переходим в каталог `cd /vagrant`
- Запускаем скрипт сборки проекта `./scripts/build.sh`(ожидаем завершения)
 
## Запуск проекта
- Запускаем в Oracle VM VirtualBox и переходим в виртуальную машину с именем `SwampHub_defaul_*` (команда "Показать")
- Вводим логин и пароль: vagrant / vagrant
- Переходим в каталог `cd /vagrant`
- Запускаем скрипт запуска `./scripts/run.sh`
- Запускаем сайт http://localhost:8080

## Перенос функцонала плагинов (на примере [devtool](https://dochub.info/entities/docs/blank?dh-doc-id=dochub.plugins.devtool_new)) 
- Клонируем репозиторий: https://github.com/RabotaRu/DocHub.git (он нужен **только** чтобы забрать файлики плагинов)
- В каталоги  своего проекта `..\SwampHub\backend\dochub\plugins` и `..\SwampHub\frontend\dochub\plugins` переносим каталог `..\DocHub-master\plugins\devtool`
- Добавляем в файлы `..\SwampHub\backend\dochub\plugins.json` и `..\SwampHub\backend\dochub\frontend.json` добавляем строку `"plugins/devtool"`, получиться должно вот так:
```
{
  "inbuilt": [
    "plugins/html",
    "plugins/markaper",
    "plugins/charts",
    "plugins/devtool"]
}
```
- В любой файл своего проекта, подключенный к проекту, необхоимо добавить: 
```
docs:
  dochub..devtool_new:
    location: DevTool
    type: devtool
```
- Запускаем VS Code в каталоге проекта
- Запускаем терминал (`CTRL+~`) и вводим команду `vagrant up` (ожидаем загрузки).
- Запускаем в Oracle VM VirtualBox и переходим в виртуальную машину с именем `SwampHub_defaul_*` (команда "Показать")
- Вводим логин и пароль: vagrant / vagrant
- Переходим в каталог `cd /vagrant`
- Последовательно запускаем скрипты:
  - reload_backend.sh
  - ./scripts/build.sh
  - ./scripts/run.sh