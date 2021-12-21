use Sp_Medical
go
select nomeUsuario, CRM, Especialidades, 
from Usuarios u
left join Medicos m
on m.idUsuarios= u.idUsuarios
left join Especialidade e
on m.idEspecialidade= e.idEspecialidade
select DataConsulta, DatadeNascimento, nomeUsuario
from Consultas c
left join Pacientes p
on  c.idPaciente= p.idPaciente
left join Usuarios u 
on p.idUsuarios= u.idUsuarios


select CRM, Especialidades, nomeClinica, nomeUsuario
from Medicos m
left join Usuarios u
on m.idUsuarios= u.idUsuarios
left join Especialidade e
on m.idEspecialidade= e.idEspecialidade
left join Clinicas c
on m.idClinica= c.idClinica



