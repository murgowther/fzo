CREATE DATABASE FZO;	

CREATE TABLE ABITURIENTS (
    id_abiturient SERIAL PRIMARY KEY NOT NULL,
    speciality_a text,
    surname_a text,
    name_a text,
    midname_a text,
    data_birth_a text,
    zvanie text,
    complect text,
    place_service text,
    group_number_a text,
    phone_number text,
    individual text,
    note_a text,
    document text,
    number_registration text,
    seria text,
    number text,
    who_take text,
    year_take text,
    specialist text);

CREATE TABLE EXAMS (
    id_exam SERIAL PRIMARY KEY NOT NULL,
    russian text,
    social text,	
    history text,
    md text,
    individual_d text,
    summa text,
    id_abiturient_exam serial not null,
FOREIGN KEY (id_abiturient_exam) 
REFERENCES ABITURIENTS (id_abiturient));

CREATE TABLE KYRSES (
    id_kyrs SERIAL PRIMARY KEY NOT NULL,
    year_nabor text,
    speciality text,
    srok_obuchenia text);

CREATE TABLE SLYSHATELS (
    id_slyshatel SERIAL PRIMARY KEY NOT NULL,
    speciality_s text,
    number_specialty text,
    surname_s text,
    name_s text,
    midname_s text,
    date_birth_s text,
    surname_s_dp text,
    name_s_dp text,
    midname_s_dp text,
    surname_s_rp text,
    name_s_rp text,
    midname_s_rp text,
    old_surname text,
    phone_number text,
    year_nabor text,
    year_postuplenia text,
    number_specialization text,
    specialization_s text,
    kod_specialization text,
    kyrs text,
    kod_kyrsa text,
    number_group_s text,
    number_group_gia text,
    number_group_preznie text,
    lichnie_number text,
    zachet_book_number text,
    note_s text, 
    document_s text,
    number_registration_s text,
    seria_s text,
    number_s text,
    who_take_s text,
    year_take_s text,
    specialist_s text,
    id_kyrs serial NOT NULL,
FOREIGN KEY (id_kyrs) 
REFERENCES KYRSES (id_kyrs));

CREATE TABLE KAFEDRES (
    id_kafedra SERIAL PRIMARY KEY NOT NULL,
    name text);

CREATE TABLE DISCIPLINES (
    id_discipline SERIAL PRIMARY KEY NOT NULL,
    name text,
    id_kafedra serial,
FOREIGN KEY (id_kafedra) 
REFERENCES KAFEDRES (id_kafedra));

CREATE TABLE TEACHERS (
    id_teacher SERIAL PRIMARY KEY NOT NULL,
    fio text,
    id_kafedra serial NOT NULL,
FOREIGN KEY (id_kafedra) 
REFERENCES KAFEDRES (id_kafedra));

CREATE TABLE arhiv (
    id_arhiv SERIAL PRIMARY KEY NOT NULL,
    speciality_arhiv text,
    surname_arhiv text,
    name_arhiv text,
    midname_arhiv text,
    data_birth_arhiv text,
    zvanie_arhiv text,
    complect_arhiv text,
    place_service_arhiv text,
    group_number_arhiv text,
    phone_number text,
    individual_arhiv text,
    note_arhiv text,
    document_arhiv text,
    number_registration_arhiv text,
    seria_arhiv text,
    number_arhiv text,
    who_take_arhiv text,
    year_take_arhiv text,
    specialist_arhiv text);


CREATE TABLE PLAN_COPLECT (
    id_plan SERIAL PRIMARY KEY NOT NULL,
    complect text,
    PD text,
    AD text,
    ORD text,
    UR text,
    PONB text,
    PPDP text);

CREATE TABLE KVOTA (
    id_kvota SERIAL PRIMARY KEY NOT NULL,
    speciality text,
    kvota_o text,
    kvota_s text);


 
ОПИСАНИЕ:
Таблица PLAN_COPLECT – план комплектования
    id_plan – уникальный идентификатор комплектующего органа
    complect – компектующий орган (ввод)
    PD – количество мест по плану на специальность 40.02.02 Правоохранительная деятельность
    AD – количество мест по плану на специальность 40.03.02 Обеспечение законности и правопорядка АД (бакалавриат)	
    ORD – количество мест по плану на специальность 40.03.02 Обеспечение законности и правопорядка ОРД (бакалавриат)
    UR – количество мест по плану на специальность 40.04.01 Юриспруденция (магистратура)
    PONB – количество мест по плану на специальность 40.05.01 Правовое обеспечение национальной безопасности
    PPDP – количество мест по плану на специальность 44.05.01 Педагогика и психология девиантного поведения

Таблица KVOTA - квота
    id_kvota – уникальный идентификатор специальности
    speciality – все специальности
    kvota_o – количество особых квот на каждую специальность
    kvota_s – количество специальных квот на каждую специальность

Таблица ABITURIENTS - абитуриенты
    id_abiturient - уникальный идентификатор абитуриента
    speciality_a – полное название специальности
    surname_a – фамилия абитуриента
    name_a – имя абитуриента
    midname_a – отчество абитуриента
    data_birth_a – дата рождения абитуриента
    zvanie – специальное звание абитуриента
    complect – комплектующий орган
    place_service – место службы абитуриента
    group_number_a – номер группы абитуриента
    phone_number – номер телефона абитуриента
    individual – название индивидуального достижения
    note_a – примечание (участие в боевых действия)
    document – документ об образовании абитуриента
    number_registration – номер региона
    seria – серия документа
    number – номер документа
    who_take – какой ВУЗ выдал документ об образовании
    year_take – когда выдали документ об образовании
    specialist – специальность по документу

Таблица EXAMS - экзамены
    id_exam - уникальный идентификатор результатов экзамена абитуриента
    russian – русский язык
    social - обществознание
    history - история
    md – междисциплинарный экзамен
    individual_d  – индивидуальные достижения
    summa – сумма баллов за экзамены
    id_abiturient_exam – внешний ключ на таблицу абитуриенты


Таблица arhiv - архив
   id_arhiv - уникальный идентификатор архива
    speciality_arhiv – полное название специальности
    surname_arhiv – фамилия абитуриента
    name_arhiv – имя абитуриента
    midname_arhiv – отчество абитуриента
    data_birth_arhiv – дата рождения абитуриента
    zvanie_arhiv – специальное звание абитуриента
    complect_arhiv – комплектующий орган
    place_service_arhiv – место службы абитуриента
    group_number_arhiv – номер группы абитуриента
    phone_number – номер телефона абитуриента
    individual_arhiv – название индивидуального достижения
    note_arhiv – примечание (участник боевых действия)
    document_arhiv – документ об образовании абитуриента
    number_registration_arhiv – номер региона
    seria_arhiv – серия документа
    number_arhiv – номер документа
    who_take_arhiv – какой ВУЗ выдал документ об образовании
    year_take_arhiv – когда выдали документ об образовании
    specialist_arhiv – специальность по документу

Таблица KYRSES – курсы
    id_kyrs - уникальный идентификатор  курса
    year_nabor – год набора курса
    speciality – полное название специальности
    srok_obuchenia – срок обучения

Таблица SLYSHATELS - слушатели
    id_slyshatel - уникальный идентификатор  слушателя
    speciality_s – полное название специальности
    number_specialty – номер специальности
    surname_s – фамилия слушателя
    name_s – имя слушателя
    midname_s – отчество слушателя
    date_birth_s – дата рождения слушателя
    surname_s_dp – фамилия в дательном падеже
    name_s_dp – имя в дательном падеже
    midname_s_dp – отчество в дательном падеже
    surname_s_rp – фамилия в родительном падеже
    name_s_rp – имя в родительном падеже
    midname_s_rp – отчество в родительном падеже
    old_surname – старое отчество
    year_nabor – год набора
    year_postuplenia – год поступления
    phone_number – номер телефона слушателя
    number_specialization – номер специализации
    specialization_s – название специализации
    kod_specialization – код специализации
    kyrs - курс
    kod_kyrsa – код курса
    number_group_s – номер группы слушателя
    number_group_gia – номер группы ГИА
    number_group_preznie – номер группы прежний
    lichnie_number – личный номер слушателя
    zachet_book_number – номер зачетной книги
    note_s - примечание
    document_s – название документа
    number_registration_s – номер региона
    seria_s – серия документа
    number_s – номер документа
    who_take_s - какой ВУЗ выдал документ об образовании
    year_take_s - когда выдали документ об образовании
    specialist_s - специальность по документу
    id_kyrs – внешний ключ на таблицу курсы

Таблица KAFEDRES - кафедры
    id_kafedra - уникальный идентификатор кафедры
    name – название кафедры

Таблица DISCIPLINES - дисциплины
    id_discipline - уникальный идентификатор дисциплины
    name – название дисциплины
    id_kafedra – внешний ключ на таблицу кафедры

Таблица TEACHERS - преподаватели
    id_teacher - уникальный идентификатор преподавателя
    fio – ФИО преподавателя
id_kafedra – внешний ключ на таблицу кафедры

