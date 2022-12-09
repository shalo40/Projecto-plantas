<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Sistema para plantas 

Este sistema se ha desarrollado con el fin de realizar un ordenamiento en un sistema de ingreso de plantas y sus caracteristicas.
Sigue las instrucciones para instalar correctamente tu sistema.

## Instrucciones de instalacion

0. Clona el repositorio o copia el contenido del archivo en un nuevo proyecto de laravel (utiliza visual studio code).


1. Instalando dependencias con Composer

Lo primero que debes hacer luego de descargar un proyecto existente a tu maquina local y después de haber configurado tu virtualhost, es instalar las dependencias del proyecto con Composer:

"$ composer require crocodicstudio/crudbooster=5.6.*"


2.Archivo de configuración de Laravel
DEBES CREAR UNA NUEVA BASE DE DATOS EN MYSQL CON NOMBRE "plantas" e importar el archivo "bd_plantas.sql" dentro del proyecto


3. Configuracion de archivo .env
Cada nuevo proyecto con Laravel, por defecto tiene un archivo .env con los datos de configuración necesarios para el mismo, cuando utilizamos un sistema de control de versiones como git, este archivo se excluye del repositorio por medidas de seguridad .

DB_DATABASE=**plantas**
DB_USERNAME=**root**
DB_PASSWORD=""


3. Corre el siguiente comando en la terminal 
"$ php artisan crudbooster:install"

luego el comando:
"$ php artisan migrate"

4. Accede al servidor
"$ php artisan serve"
y añade en la URL "/admin/login"



### Usuarios y contraseñas 
Para iniciar sesion en el sistema se debe utilizar las siguientes credenciales:

------------------------------------
administrador
Rodolfo.adm@plantas.cl
contraseña: 123456
------------------------------------
Técnico
Rodolfo.tec@plantas.cl
contraseña: 123456
------------------------------------


## Code of Conduct
In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).


## License
The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
