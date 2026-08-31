CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes(
    id_paciente VARCHAR(8) NOT NULL PRIMARY KEY,
    nome_paciente VARCHAR(100) NOT NULL,
    cpf_paciente VARCHAR(11) NOT NULL,
    endereco_paciente VARCHAR(100) NOT NULL,
    idade_paciente INT NOT NULL,
    dataNasc_paciente DATE NOT NULL,
    contato_paciente VARCHAR(100) NOT NULL
);

CREATE TABLE medicos(
    id_medico VARCHAR(8) NOT NULL PRIMARY KEY,
    nome_medico VARCHAR(100) NOT NULL,
    cpf_medico VARCHAR(11) NOT NULL,
    especializacao_medico VARCHAR(50) NOT NULL,
    id_paciente_fk VARCHAR(8) NOT NULL,
    CONSTRAINT medicos_pacientes_fk FOREIGN KEY (id_paciente_fk)
        REFERENCES pacientes(id_paciente)
);

CREATE TABLE enfermeiros(
    id_enfermeiro VARCHAR(8) NOT NULL PRIMARY KEY,
    nome_enfermeiro VARCHAR(100) NOT NULL,
    cpf_enfermeiro VARCHAR(11) NOT NULL,
    id_paciente_fk VARCHAR(8) NOT NULL,
    CONSTRAINT enfermeiros_pacientes_fk FOREIGN KEY (id_paciente_fk)
        REFERENCES pacientes(id_paciente)
);

CREATE TABLE remedios(
    id_remedio VARCHAR(8) NOT NULL PRIMARY KEY,
    nome_remedio VARCHAR(100) NOT NULL,
    qntd_remedio DECIMAL(4,2) NOT NULL,
    dtv_remedio DATE NOT NULL,
    horario_remedio TIME NOT NULL,
    id_paciente_fk VARCHAR(8) NOT NULL,
    CONSTRAINT remedios_pacientes_fk FOREIGN KEY (id_paciente_fk)
        REFERENCES pacientes(id_paciente)
);

CREATE TABLE farmaceuticos(
    id_farmaceutico VARCHAR(8) NOT NULL PRIMARY KEY,
    nome_farmaceutico VARCHAR(100) NOT NULL,
    cpf_farmaceutico VARCHAR(11) NOT NULL,
    id_enfermeiro_fk VARCHAR(8),
    id_remedio_fk VARCHAR(8),
    CONSTRAINT farm_enferm_fk FOREIGN KEY (id_enfermeiro_fk)
        REFERENCES enfermeiros(id_enfermeiro),
    CONSTRAINT farm_rem_fk FOREIGN KEY (id_remedio_fk)
        REFERENCES remedios(id_remedio)
);

INSERT INTO pacientes VALUES(
'PAC00001', 'Ana Silva', '12345678901', 'Rua das Flores, 123', 34, '1990-05-14', '(11) 98765-4321'
);
INSERT INTO medicos VALUES(
'MED00001', 'Dr. Carlos Eduardo', '11122233344', 'Cardiologia', '12345678901'
);
INSERT INTO enfermeiros VALUES(
'ENF00001', 'Enfermeiro Lucas', '66677788899', '12345678901'
);
INSERT INTO farmaceuticos VALUES(
'FAR00001', 'Farmacêutico João', '12121212121', '66677788899', 'Dipirona 500mg'
);
INSERT INTO remedios VALUES(
'FAR00001', 'Farmacêutico João', '12121212121', '66677788899', 'Dipirona 500mg'
);

SELECT * FROM pacientes;
