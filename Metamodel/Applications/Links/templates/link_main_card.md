## Информационный поток данных "{{link_title}}"
- **ID**: {{link_id}}
- **Код**: {{link_code}}
- **Расширеное описание**: {{link_description}}

### Статус использования
- **Статус:** {{link_state}}
- **Дата актуализации:** {{link_state_update_date}}

### Стороны взаимодействия
- **Источник:** [{{component_from_title}}]({{component_from_link}})
- **Подсистема источника:** [{{component_from_sybsystem_title}}]({{component_from_sybsystem_link}})
- **Приемник:** [{{component_to_title}}]({{component_to_link}})
- **Подсистема приемника:** [{{component_to_sybsystem_title}}]({{component_to_sybsystem_link}})

### Характеристики
- **Протокол**: {{interface}}
- **Транспорт**: [{{interface_via_title}}]({{interface_via_link}}) 
- **Правило описания пакета**: {{interface_standard_type}}
- **Асинхронное взаимодействие**: {{link_asynchronous}}
- **Размер**: {{link_size_mb}} мб
- **Периодичность**: {{link_periodicity}}

### Спецификация

![Получаем список атрибутов](@document/links.doc.ParametersList?id={{link_id}})

### Используемые бизнес-сущности

![Получаем список атрибутов](@document/links.doc.BusinessObjects?id={{link_id}})
