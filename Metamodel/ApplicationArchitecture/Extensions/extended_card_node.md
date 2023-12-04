**Перейти** 
| [{{domain_title}}](/entities/extended_application_card/extended_card_functional_cluster?id={{domain_id}}) 
| [{{Cluster_title}}](/entities/extended_application_card/extended_card_cluster?id={{Cluster_id}}) |

## Нода "{{node_title}}"
- **ID**: [{{node_id}}]({{node_link}})
- **Описание**: {{node_description}}

#### Ключевые сотрудники, контакты:

![Ключевые сотрудники](@document/Application.doc.KeyContacts?component={{node_id}})

#### Фактические инсталяции приложений:

![Ключевые сотрудники](@document/technology.doc.ListApplicationsInstalledOnNode?component={{node_id}})

### Итоговые аппаратные ресурсы:

![Сайзинг_Итоговый_Таблицей](@document/technology.doc.CharacteristicsNode.Total?node_id={{node_id}})

### Расшифровка аппаратных ресурсов по компонентам:

![Сайзинг_Таблицей](@document/technology.doc.CharacteristicsNode?node_id={{node_id}})

    Примечание:
    1. CPU/vCPU c учетом Hyper-Threading. Для рабочих серверов 1С процессор с высокой тактовой частотой, желательно не менее 3ГГц. Учитывать соотношение  физической к виртуальной 
       структуре для гипервизора. Не создавать "широких" ВМ, учитывая NUMA.
    2. Диск тип 1 - производительность не менее 2000 iops при времени доступа не менее 10мс (99 перцентиль)  блоками = 64КиБ, соотношение чтение/запись = 60/40, случайный доступ
    3. Диск тип 2 - производительность не менее 10000 iops при времени доступа не менее 5мс (99 перцентиль)  блоками = 4КиБ, соотношение чтение/запись = 70/30, случайный доступ
    4. Диск тип 3 - производительность не менее 40000 iops при времени доступа не менее 1мс (99 перцентиль) блоками = 4КиБ, соотношение чтение/запись = 0/100, последовательный доступ
