1. Заходимо в папку лаби через консоль(в моєму випадку cd C:\Users\danila\Documents\lab_3)
2. Інсталюємо pip:
   pip install virtualenv            
   virtualenv venv --python=python3.9
   source venv/bin/activate
   pip install -r requirements.txt
3. Запускаємо проект (uvicorn main:app)
4. Відкриваємо сайт через лінк який вивела консоль(http://127.0.0.1:8000)