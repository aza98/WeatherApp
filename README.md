<h1 align="center">WeatherApp 🌤️</h1>

<p align="center">
¡Bienvenido a <strong>WeatherApp</strong>! Una aplicación de iOS que muestra el clima actual de tu ubicación con una interfaz moderna y un fondo animado que cambia según las condiciones meteorológicas.
</p>

---

<h2 align="left">🛠️ Tecnologías</h2>

<div align="left">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" height="40" alt="Swift logo" />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/xcode/xcode-original.svg" height="40" alt="Xcode logo" />
  <img width="12" />
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apple/apple-original.svg" height="40" alt="Apple logo" />
</div>

---

<h2 align="left">✨ Características Principales</h2>

<ul>
  <li><strong>Integración con OpenWeatherMap:</strong> Recupera datos meteorológicos en tiempo real.</li>
  <li><strong>Interfaz Moderna:</strong> Construida con SwiftUI, usando íconos de SF Symbols y vistas personalizadas.</li>
  <li><strong>Ubicación en Tiempo Real:</strong> Utiliza Core Location para obtener la ubicación del usuario.</li>
  <li><strong>Fondo Animado:</strong> Degradados dinámicos que reflejan el estado del tiempo.</li>
  <li><strong>Arquitectura Mantenible:</strong> Separación de responsabilidades para un código limpio y escalable.</li>
</ul>

---

<h2 align="left">📋 Requisitos</h2>

<ul>
  <li><strong>iOS 15 o superior</strong></li>
  <li><strong>Swift 5.9 o superior</strong></li>
  <li><strong>Xcode 15 o superior</strong></li>
  <li><strong>Clave API válida de OpenWeatherMap</strong></li>
</ul>

---

<h2 align="left">🚀 Configuración Inicial</h2>

<ol>
  <li><strong>Clonar el repositorio:</strong>
    <pre>
git clone https://github.com/tu_usuario/tu_repositorio.git
cd tu_repositorio
    </pre>
  </li>
  <li><strong>Agregar tu API Key:</strong>
    <p>En <code>WeatherManager.swift</code>, reemplaza <code>TU_API_KEY_AQUI</code> con tu clave de API:</p>
    <pre>
private let apiKey = "TU_API_KEY_AQUI"
    </pre>
  </li>
  <li><strong>Configurar permisos de ubicación:</strong>
    <p>En <code>Info.plist</code>, incluye:</p>
    <pre>
<key>NSLocationWhenInUseUsageDescription</key>
<string>Esta aplicación necesita acceder a tu ubicación para mostrar el clima actual.</string>
    </pre>
  </li>
  <li><strong>Ejecutar la app:</strong>
    <p>Abre el proyecto en Xcode y pulsa <code>Cmd + R</code> para probarlo en un simulador o dispositivo.</p>
  </li>
</ol>

---

<h2 align="left">🗂️ Estructura de Archivos</h2>

<ul>
  <li><strong>WelcomeView.swift:</strong> Vista inicial para solicitar permisos de ubicación.</li>
  <li><strong>LoadingView.swift:</strong> Indicador de progreso mientras se obtienen datos.</li>
  <li><strong>WeatherView.swift:</strong> Vista principal que muestra los datos del clima.</li>
  <li><strong>WeatherRow.swift:</strong> Componente reutilizable para información puntual.</li>
  <li><strong>AnimatedWeatherBackground.swift:</strong> Fondo animado según el clima.</li>
  <li><strong>ColorExtensions.swift:</strong> Degradados personalizados para cada condición.</li>
  <li><strong>Extensions.swift:</strong> Métodos auxiliares (redondear números, esquinas).</li>
  <li><strong>WeatherIconMapper.swift:</strong> Mapea condiciones a íconos de SF Symbols.</li>
  <li><strong>WeatherManager.swift:</strong> Lógica para la integración con OpenWeatherMap.</li>
  <li><strong>LocationManager.swift:</strong> Gestión de ubicación y permisos.</li>
  <li><strong>ModelData.swift:</strong> Modelos de datos meteorológicos.</li>
</ul>

---

<h2 align="left">🎨 Vista Previa</h2>

<p align="left">*(Incluir imágenes o GIFs de la aplicación en acción aquí)*</p>
