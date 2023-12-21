**Перейти** 
| [Связи исходящие ({{count_links_from}})](/entities/links/OutgoingLinksFilteredBy_SystemID?id={{id}}) 
| [Связи входящие ({{count_links_to}})](/entities/links/IncomingLinksFilteredBy_SystemID?id={{id}}) 
| [Объекты приложения/сервиса ({{count_app_data_obj}})](/entities/ApplicationDataObjects/filteredBy_SystemID?SystemID={{id}})
| [Процессы ({{count_sequence}})](/entities/SequenceDiagrams/filteredBy_SystemID?SystemID={{id}}) 
| [Доступные API](/docs/{{doc_id}}) |

{{doc_id}}

## Приложение/сервис "{{title}}"
- **ID**: [{{id}}]({{id_link}})
- **Описание**: {{description}}
- **Статус:** {{state}}
- **Дата актуализации:** {{state_update_date}}

### Основные характеристики:
- **Функциональная область:** {{area}}
- **Платформа:** {{development_platform}}
- **Модель разработки:** {{development_model}}

### Базовое решение:
- **Базовое решение:** {{basic_solution}}
- **Официальный сайт:** {{basic_solution_link}}
- **Статус развития:** {{basic_solution_state}}

#### Ключевая функциональность:

![Ключевая функциональность](@document/Application.doc.Aspects?component={{id}})

#### Ключевые сотрудники, контакты:

![Ключевые сотрудники](@document/Application.doc.KeyContacts?component={{id}})

#### Документация:

![Документация](@document/Application.doc.ApplicationDocs?component={{id}})

#### Технологии:
![Технологии](@document/Application.doc.ApplicationTechnologies?component={{id}})

#### Фактические инсталяции:

![Ключевые сотрудники](@document/technology.doc.ListServersWhereApplicationIsInstalled?component={{id}})





