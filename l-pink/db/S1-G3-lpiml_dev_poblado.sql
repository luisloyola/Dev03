
INSERT INTO `lpink_dev`.`users` (`id`, `rol`, `nombre`, `apellido`, `created_at`, `updated_at`) 
VALUES
	(NULL, 'Scrum Master', 'Matias', 'Quinteros', '2015-04-13 08:00:00', '2015-04-13 08:00:00'), 
	(NULL, 'Programador', 'Luis', 'Loyola', '2015-04-13 08:00:00', '2015-04-13 08:00:00'),
	(NULL, 'Programador', 'Fernanda', 'Lobos', '2015-04-13 08:00:00', '2015-04-13 08:00:00'),
	(NULL, 'Programador', 'Chien', 'Lin', '2015-04-13 08:00:00', '2015-04-13 08:00:00');


INSERT INTO `lpink_dev`.`sprints` (`id`, `nombre`, `created_at`, `updated_at`)
VALUES
	(NULL, 'Sprint 1', '2015-04-08 17:00:00', '2015-04-08 17:00:00'),
	(NULL, 'Sprint 2', '2015-04-29 17:00:00', '2015-04-29 17:00:00');

INSERT INTO `lpink_dev`.`reunions` (`id`, `fecha`, `horainicio`, `horafin`, `lugar`, `created_at`, `updated_at`, `sprint_id`) 
VALUES 
	(NULL, '2015-04-08', '18:00:00', '18:40:00', 'Usach', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '1'),
	(NULL, '2015-04-09', '21:00:00', '21:15:00', 'Virtual', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '1'),
	(NULL, '2015-04-10', '21:00:00', '21:15:00', 'Virtual', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '1'),
	(NULL, '2015-04-11', '21:00:00', '21:15:00', 'Virtual', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '1'),

	(NULL, '2015-05-01', '21:00:00', '21:15:00', 'Virtual', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '2'),
	(NULL, '2015-05-02', '22:00:00', '22:15:00', 'Virtual', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '2'),
	(NULL, '2015-05-03', '23:00:00', '23:15:00', 'Virtual', '2015-04-08 18:00:00', '2015-04-08 18:00:00', '2');
	
INSERT INTO `lpink_dev`.`userreunions` (`id`, `secreatrio`, `presente`, `created_at`, `updated_at`, `reunion_id`, `user_id`) 
VALUES
	(NULL, '0', '1', '', '', '1', '1'),
	(NULL, '1', '1', '', '', '1', '2'),
	(NULL, '0', '1', '', '', '1', '3'),
	(NULL, '0', '1', '', '', '1', '4'),

	(NULL, '1', '1', '', '', '2', '1'),
	(NULL, '0', '0', '', '', '2', '2'),
	(NULL, '0', '1', '', '', '2', '3'),
	(NULL, '0', '1', '', '', '2', '4'),

	(NULL, '0', '1', '', '', '3', '1'),
	(NULL, '1', '1', '', '', '3', '2'),
	(NULL, '0', '0', '', '', '3', '3'),
	(NULL, '0', '1', '', '', '3', '4'),

	(NULL, '0', '1', '', '', '4', '1'),
	(NULL, '1', '1', '', '', '4', '2'),
	(NULL, '0', '1', '', '', '4', '3'),
	(NULL, '0', '0', '', '', '4', '4'),

	(NULL, '0', '1', '', '', '5', '1'),
	(NULL, '1', '0', '', '', '5', '2'),
	(NULL, '0', '0', '', '', '5', '3'),
	(NULL, '0', '1', '', '', '5', '4'),
	
	(NULL, '0', '0', '', '', '6', '1'),
	(NULL, '1', '1', '', '', '6', '2'),
	(NULL, '0', '1', '', '', '6', '3'),
	(NULL, '0', '0', '', '', '6', '4'),

	(NULL, '0', '1', '', '', '7', '1'),
	(NULL, '1', '1', '', '', '7', '2'),
	(NULL, '0', '1', '', '', '7', '3'),
	(NULL, '0', '1', '', '', '7', '4');

INSERT INTO `lpink_dev`.`tasks` (`id`, `tema`, `tipo`, `discusion`, `accion`, `owner`, `fechatermino`, `estado`, `baseline`, `created_at`, `updated_at`, `reunion_id`) 
VALUES 
	(NULL, 'Scrmu Master', 													'Acuerdo', 		'Definir Scrum master', 																'Matías Quinteros será el SM', 																'Todos', '2015-04-09', 'Completado', '0', '', '', '1'),
	(NULL, 'Tiempos para reuniones diarias', 								'Compromiso', 	'Ver la disponibilidad', 																'Definir la hora de las reuniones diarias', 												'Todos', '2015-04-09', 'Completado', '0', '', '', '1'),
	(NULL, 'Canal de comunicación oficial', 								'Acuerdo', 		'No todos pueden por whatsapp o facebook, ya que no pueden/utilizan estos medios',		'Se define telegram como el medio oficial de comunicación', 								'Todos', '2015-04-09', 'Completado', '0', '', '', '1'),
	(NULL, 'Historia Navegación', 											'Acuerdo', 		'Se puede subdividir en 2 historias de usuario', 										'Dividir las historias de navegación en 2', 												'Todos', '2015-04-12', 'Completado', '0', '', '', '2'),
	(NULL, 'Documento del Sprint Backlog', 									'Compromiso', 	'El SM pasará las historias y tareas discutidas al excel', 								'Crear excel para el sprint backlog', 														'MQ', 	 '2015-04-12', 'Completado', '2', '', '', '2'),
	(NULL, 'Base de datos', 												'Acuerdo',		'Si el grupo 1 se demora con el script inicial se debe crear un sql para el grupo', 	'Crear sql si el grupo 1 no lo ha hecho', 													'Todos', '2015-04-12', 'Completado', '0', '', '', '2'),
	(NULL, 'Defnición de historia "detalle del elemento dialógico"', 		'Acuerdo', 		'Se incluye dentro de las historias de navegación pero queda pendiente por el momento',	'Esperar a completar el desarrollo de la navegación e implementar la vista en ese punto', 	'Todos', '2015-04-12', 'Completado', '0', '', '', '2'),
	(NULL, 'Instalación Ruby', 												'Compromiso', 	'Se debe instalar RoR', 																'Instalar RoR en sus PC', 																	'Todos', '2015-04-14', 'Completado', '4', '', '', '3'),
	(NULL, 'Informe Nielsen Completo', 										'Compromiso', 	'se debe terminar el informe', 															'Terminar el documento', 																	'Todos', '2015-04-14', 'Completado', '3', '', '', '3'),
	(NULL, 'Terminar el informe', 											'Compromiso', 	'El informe debe estar listo con formato tipo tesis y hacer una tabla como la tarea 1',	'Terminar el documento', 																	'Todos', '2015-04-15', 'Completado', '3', '', '', '4'),
	(NULL, 'Hacer kanban en trello', 										'Compromiso', 	'Se debe hacer un kanban y no seguir ocupando excel que se esta ocupando', 				'Crear Kanban', 																			'LL', 	 '2015-04-15', 'Completado', '0', '', '', '4'),
	(NULL, 'Trello', 														'Compromiso', 	'tiene problemas', 																		'Solucionarlo', 																			'LL', 	 '2015-04-15', 'Completado', '0', '', '', '4'),
	(NULL, 'Instalación Ruby', 												'Compromiso', 	'problemas de instalación', 															'Crear MV', 																				'FL', 	 '2015-05-15', 'Completado', '3', '', '', '5'),
	(NULL, 'Estudiar Ruby', 												'Compromiso', 	'Los miembros del grupo deben estudiar RoR', 											'El SM facilitará tutoriales', 																'Todos', '2015-05-16', 'Completado', '0', '', '', '5'),
	(NULL, 'El SM debe hacer los Burndowns por que no se están hacendo', 	'Compromiso', 	'burndown', 																			'Hacer burndown', 																			'MQ', 	 '2015-05-16', 'Completado', '0', '', '', '6'),
	(NULL, 'Dar formate tesis a las figuras', 								'Compromiso', 	'Las figuras no tienen formato', 														'Hacer formato', 																			'LL', 	 '2015-05-17', 'Completado', '2', '', '', '6'),
	(NULL, 'Poblar base de datos', 											'Compromiso', 	'Se debe tener una base de datos inicial para empezar a poblar', 						'Subir SQL con la base de datos poblada', 													'LL', 	 '2015-05-17', 'Completado', '1', '', '', '7'),
	(NULL, 'Repositorio de Git', 											'Compromiso', 	'hacer fork', 																			'Hacer fork', 																				'MQ,LL', '2015-05-18', 'Completado', '0', '', '', '7');

