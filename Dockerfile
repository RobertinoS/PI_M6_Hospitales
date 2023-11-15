# Usa la última imagen de Python
FROM python:latest

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos (si tienes uno) y realiza la instalación
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copia tu código a la imagen de Docker
COPY . /app

# Ejecuta tu aplicación FastAPI
CMD ["uvicorn", "nombre_de_tu_archivo_main:app", "--host", "0.0.0.0", "--port", "80"]
