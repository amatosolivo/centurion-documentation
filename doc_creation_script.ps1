# Definir la ruta base donde se crearán los archivos y carpetas
$basePath = "C:\workspace\centurion-documentation\docs"

# Función para crear un archivo .md con contenido de ejemplo
function Create-MDFile($path, $content) {
    New-Item -Path $path -ItemType File -Force
    Set-Content -Path $path -Value $content
}

# Crear la estructura de carpetas y archivos
New-Item -Path $basePath -ItemType Directory -Force

# Crear index.md
Create-MDFile "$basePath\index.md" "# Bienvenido a la documentación de Centurion`n`nEsta es la página de inicio de la documentación de Centurion."

# Instalación
New-Item -Path "$basePath\instalacion" -ItemType Directory -Force
Create-MDFile "$basePath\instalacion\requisitos.md" "# Requisitos del Sistema`n`nAquí se detallan los requisitos para instalar Centurion."
Create-MDFile "$basePath\instalacion\guia-instalacion.md" "# Guía de Instalación`n`nSiga estos pasos para instalar Centurion."
Create-MDFile "$basePath\instalacion\configuracion.md" "# Configuración`n`nInstrucciones para configurar Centurion después de la instalación."

# Uso
New-Item -Path "$basePath\uso" -ItemType Directory -Force
Create-MDFile "$basePath\uso\primeros-pasos.md" "# Primeros Pasos`n`nCómo empezar a usar Centurion."
New-Item -Path "$basePath\uso\caracteristicas" -ItemType Directory -Force
Create-MDFile "$basePath\uso\caracteristicas\gestion-guardianes.md" "# Gestión de Guardianes`n`nCómo gestionar guardianes en Centurion."
Create-MDFile "$basePath\uso\caracteristicas\servicios.md" "# Servicios`n`nDescripción de los servicios ofrecidos por Centurion."
Create-MDFile "$basePath\uso\caracteristicas\clientes.md" "# Clientes`n`nGestión de clientes en Centurion."
Create-MDFile "$basePath\uso\guia-usuario.md" "# Guía de Usuario`n`nGuía detallada para usar Centurion."

# Arquitectura
New-Item -Path "$basePath\arquitectura" -ItemType Directory -Force
Create-MDFile "$basePath\arquitectura\descripcion-general.md" "# Descripción General`n`nVisión general de la arquitectura de Centurion."
Create-MDFile "$basePath\arquitectura\modelos-datos.md" "# Modelos de Datos`n`nDescripción de los modelos de datos en Centurion."
Create-MDFile "$basePath\arquitectura\componentes.md" "# Componentes del Sistema`n`nDetalle de los componentes principales de Centurion."

# API Reference
New-Item -Path "$basePath\api" -ItemType Directory -Force
Create-MDFile "$basePath\api\introduccion.md" "# Introducción a la API`n`nIntroducción a la API de Centurion."
Create-MDFile "$basePath\api\autenticacion.md" "# Autenticación`n`nCómo autenticarse en la API de Centurion."
Create-MDFile "$basePath\api\endpoints.md" "# Endpoints`n`nLista y descripción de los endpoints disponibles."

# Seguridad
New-Item -Path "$basePath\seguridad" -ItemType Directory -Force
Create-MDFile "$basePath\seguridad\autenticacion-autorizacion.md" "# Autenticación y Autorización`n`nDetalles sobre la seguridad en Centurion."
Create-MDFile "$basePath\seguridad\cumplimiento-normas.md" "# Cumplimiento de Normas`n`nInformación sobre el cumplimiento normativo."
Create-MDFile "$basePath\seguridad\registro-monitoreo.md" "# Registro y Monitoreo`n`nCómo se registran y monitorean las actividades en Centurion."

# DevOps y Despliegue
New-Item -Path "$basePath\devops" -ItemType Directory -Force
Create-MDFile "$basePath\devops\entorno-desarrollo.md" "# Entorno de Desarrollo`n`nConfiguración del entorno de desarrollo para Centurion."
Create-MDFile "$basePath\devops\despliegue-produccion.md" "# Despliegue en Producción`n`nPasos para desplegar Centurion en producción."
Create-MDFile "$basePath\devops\mantenimiento.md" "# Mantenimiento`n`nGuía de mantenimiento para Centurion."

# Soporte y FAQ
New-Item -Path "$basePath\soporte" -ItemType Directory -Force
Create-MDFile "$basePath\soporte\faq.md" "# Preguntas Frecuentes`n`nRespuestas a las preguntas más comunes sobre Centurion."
Create-MDFile "$basePath\soporte\resolucion-problemas.md" "# Resolución de Problemas`n`nGuía para resolver problemas comunes en Centurion."

# Contribución y Changelog
Create-MDFile "$basePath\contribucion.md" "# Contribución`n`nCómo contribuir al desarrollo de Centurion."
Create-MDFile "$basePath\changelog.md" "# Historial de Cambios`n`nRegistro de cambios y versiones de Centurion."

Write-Host "La estructura de carpetas y archivos para la documentación de Centurion ha sido creada en $basePath"