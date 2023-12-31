**Перейти** 
| [Архитектура уровня 0](/docs/Romashka.doc.lvl_0_Tech_Architecture) |
| [Архитектура уровня 1](/docs/Romashka.doc.lvl_1_Tech_Architecture) |

## Среда развертывания приложений предприятия "{{Cluster_title}}"
- **ID**: [{{Cluster_id}}]({{Cluster_link}})
- **Описание**: {{Cluster_description}}

#### Ключевые сотрудники, контакты:

![Ключевые сотрудники](@document/Application.doc.KeyContacts?component={{Cluster_id}})

### Итоговые аппаратные ресурсы:

![Сайзинг_Итоговый_Таблицей](@document/technology.doc.CharacteristicsCluster.Total?Cluster_id={{Cluster_id}})

### Расшифровка аппаратных ресурсов по функциональным обласлям:

![Сайзинг_Таблицей](@document/technology.doc.CharacteristicsCluster?Cluster_id={{Cluster_id}})

    Примечание:
    1. CPU/vCPU c учетом Hyper-Threading. Для рабочих серверов 1С процессор с высокой тактовой частотой, желательно не менее 3ГГц. Учитывать соотношение  физической к виртуальной структуре
       для гипервизора. Не создавать "широких" ВМ, учитывая NUMA.
    2. Диск тип 1 - производительность не менее 2000 iops при времени доступа не менее 10мс (99 перцентиль)  блоками = 64КиБ, соотношение чтение/запись = 60/40, случайный доступ
    3. Диск тип 2 - производительность не менее 10000 iops при времени доступа не менее 5мс (99 перцентиль)  блоками = 4КиБ, соотношение чтение/запись = 70/30, случайный доступ
    4. Диск тип 3 - производительность не менее 40000 iops при времени доступа не менее 1мс (99 перцентиль) блоками = 4КиБ, соотношение чтение/запись = 0/100, последовательный доступ
