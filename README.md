# memroomba
memroomba.sh script optimizes memory and cache on Unix/Linux systems, with optional Discord alert.recommended for hostings and hostings using pterodactyl or free hostings



English:

The memroomba.sh script optimizes memory and cache on Unix/Linux systems. Its features include:

Cache Clearing: It clears system cache to free up resources.
Memory Optimization: It releases cached data to improve performance.
Webhook Alert (Optional): Sends a Discord alert with optimization details.
Español:

El script memroomba.sh optimiza la memoria y la caché en sistemas Unix/Linux. Sus características son:

Limpieza de Caché: Libera recursos al limpiar la caché del sistema.
Optimización de Memoria: Libera datos en caché para mejorar el rendimiento.
Alerta por Webhook (Opcional): Envía una alerta a Discord con detalles de la optimización.



Instalation:

English:

Installation Guide for memroomba.sh Script

This guide provides a step-by-step explanation of how to install and set up the memroomba.sh script on your Unix/Linux system.

Step 1: Upload the Script

Log in to your system.
Upload the memroomba.sh script to your server. You can use a secure method such as SFTP or SCP.
Step 2: Grant Execution Permissions

Open a terminal.
Navigate to the directory where you uploaded the script, using the cd command.
Give the script execution permissions with the command:

chmod +x memroomba.sh
Step 3: Test the Script Manually

Run the script manually to ensure it works as expected:

./memroomba.sh
Step 4: Configure the Cron Job

Open the crontab configuration:

crontab -e
Add the following line to run the script every 30 minutes:

*/30 * * * * /bin/bash /path/to/memroomba.sh
Replace /path/to/memroomba.sh with the actual path to the script.

Save and exit the editor.

Step 5: Verify the Cron Job

To verify that the cron job is set up correctly, list the current cron jobs:

crontab -l
You should see the line you added in Step 4.

Step 6: Watch the Script Run

Wait for approximately 30 minutes or observe the cron job running:

tail -f /var/log/syslog
You're all set! The memroomba.sh script will now automatically optimize memory and cache every 30 minutes according to the cron schedule.

Español:

Guía de Instalación para el Script memroomba.sh

Esta guía proporciona una explicación paso a paso sobre cómo instalar y configurar el script memroomba.sh en tu sistema Unix/Linux.

Paso 1: Subir el Script

Inicia sesión en tu sistema.
Sube el script memroomba.sh a tu servidor. Puedes utilizar un método seguro como SFTP o SCP.
Paso 2: Conceder Permisos de Ejecución

Abre una terminal.
Navega al directorio donde subiste el script utilizando el comando cd.
Otorga permisos de ejecución al script con el siguiente comando:

chmod +x memroomba.sh
Paso 3: Probar el Script Manualmente

Ejecuta el script manualmente para asegurarte de que funcione como se espera:

./memroomba.sh
Paso 4: Configurar la Tarea Cron
Abre la configuración de crontab:
Agrega la siguiente línea para ejecutar el script cada 30 minutos:

*/30 * * * * /bin/bash /ruta/al/memroomba.sh
Reemplaza /ruta/al/memroomba.sh con la ruta real al script.

Guarda y sale del editor.

Paso 5: Verificar la Tarea Cron

Para verificar que la tarea cron se configuró correctamente, lista las tareas cron actuales:


crontab -l
Deberías ver la línea que agregaste en el Paso 4.

Paso 6: Observa la Ejecución del Script

Espera aproximadamente 30 minutos o observa la ejecución de la tarea cron:

tail -f /var/log/syslog
¡Listo! El script memroomba.sh ahora optimizará automáticamente la memoria y la caché cada 30 minutos según la programación de cron.
