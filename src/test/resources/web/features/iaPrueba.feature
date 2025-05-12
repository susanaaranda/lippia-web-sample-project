Feature: Registro de empleados


	Scenario: Registro exitoso de un nuevo empleado  
		Given que el usuario ha iniciado sesión como administrador  
		When se ingresa la información personal y laboral del nuevo empleado  
		And se asigna un rol en el sistema  
		Then el perfil del nuevo empleado se crea exitosamente  
	
	Scenario: Validación de campos obligatorios en el registro de empleado  
		Given que el usuario ha iniciado sesión como administrador  
		When se intenta registrar un nuevo empleado sin completar todos los campos obligatorios  
		Then se muestra un mensaje de error indicando los campos faltantes  
		
	Scenario: Asignación de roles al nuevo empleado  
		Given que el usuario ha iniciado sesión como administrador  
		When se ingresa la información del nuevo empleado  
		And se asigna un rol específico al empleado  
		Then el rol asignado se refleja correctamente en el perfil del empleado  
		
	Scenario Outline: Registro de empleado con diferentes roles  
		Given que el usuario ha iniciado sesión como administrador  
		When se ingresa la información del nuevo empleado  
		And se asigna el rol <rol> al empleado  
		Then el perfil del empleado muestra el rol <rol> asignado  

		Examples:  | rol |  | Administrador |  | Usuario |  | Supervisor |  
		
	Scenario: Búsqueda de empleado recién registrado  
		Given que el usuario ha iniciado sesión como administrador  
		When se busca al empleado por su número de identificación  
		Then se despliega la información completa del perfil del empleado registrado
		