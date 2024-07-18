git config --global user.name "імя"  #змінити імя користувача --config  це глобально і на всіх репах своїх
git congfig --list  #вивід всього конфігу
git init   #створити новий репозиторій (виконується в тій папці шо треба додати в репозиторій)
gid add  #добавляє файли в індекс
git commit  #збереження в репозиторій змінених даних
git commit --amend #змінити дані поточного коміту
git commit --amend --author="tarmel762 <tarasmelnykov@ukr.net>" #Змінити дані про комітера останнього коміту
git status #статус поточний
gid commit -m "...." #створити новий репозиторій - нову версію
git commit "... [actions skip]" #створити комміт без запуску хуків на ГітХабі
git checkout <commit_hash> #перехід в любий інший комміт
git checkout <branch_hash | branch_name>#перехід в любу іншу гілку
git log #переглянути останній коміт
git cat-file -t <hash> # прочитати вміст файлу гіта -  що за тип
git cat-file -p <hash> # прочитати вміст файлу гіта -  що всередині файлу
git cat-file -s <hash> # прочитати вміст файлу гіта -  розмір файлу
git ls-files # глянути файли і папки в стейджінг і в робочій папці 
git read-tree <hash> #глянути дерево(папку) і занести все на що вона зсилаєтья в індекс
git checkout-index -a #Занести все з індексу (стейджінг) в робочу директрію (після git read-tree)
git checkout -b <branch_name> # створити гілку нову і перейти в неї
git branch <branch_name> # створити гілку нову
git branch -m <old_branch_name> <new_branch_name> # переіменувати гілку нову
git merge <what_branch_merge_name> #злиття гілки в поточну гілку
git clone <url> # скачати віддалений репозиторі по посиланню
git branch -a #глянути гілки ВСІ (і на віддаленому теж)
git pull #Завантажує зміни з віддаленого репа на локальний	
git remote rm origin #видалення віддаленого репозиторію
git remote add <name_of_remote_rep> <url> #додавання новго репзиторію зазвичай імя дають  origin
git push origin -u <branch_name> #саме перше вивантаження гілки на віддалений реп
git push # 2ге і наступні вивантаження гілки на віддалений реп
git remote -v # подивитися віддалений реп
git branch -vv # глянути як локальна гілка звязана з віддаленою
git push origin -d <branch_name> #видалення гілки на віддаленому репі
git fetch #витягнення змін з віддаленого репа на локальний лише в репозиторій (робоча папка не міняється)
git merge FETCH_HEAD #обєднати гілку внутрішню з віддаленою злиттям (якшо в них є різні коміти)
git merge origin/<branch_name> #об'єднання змін з віддаленого репа в гілку локального <branch_name> репа
git remote update origin --prune #оновити локальний реп після видалення гілки на віддаленому
git tag x.x.x #Додати простий тег версії наприклад 1.4.6
git tag -a x.x.x -m "Мессага для тега" #Анотований тег з мессагою + зберігає автора коміту і дату
git rebase <branch> #перебазування гілки в поточну
git reset <commit-hash> #видалити коміт за хешем
git reset --hard <commit_hash> #видаляє коміт з усим що з ним звязано
git revert <commit_hash> #повертає всі зміни перед коміом і робить з ними новий коміт
git config credentional.helper "" #очистити кеш користувача і пароля на акаунт гітхаб

git pull <remote> #Извлечь из указанного удаленного репозитория копию текущей ветки и немедленно слить ее с локальной копией. 
git pull --no-commit <remote> #Подобно вызову по умолчанию, извлекает удаленное содержимое, но не создает новый коммит со слитым содержимым.

https://www.atlassian.com/ru/git/tutorials/syncing/git-pull  -круті приклади з  git PULL

# Add tag to commit and push it to remote
git tag -a -m "Description of this release" v1
git push --follow-tags



################################################################################
git merge origin/<branch> #об'єднання змін з віддаленого репа в гілку локального <branch> репа
git merge <branch> # об'єднання змін з гілки <branch> в поточну гілку (Зберігає гілку)
git rm --cached FILENAME #видалити файл з індексу (стейджінга) але залишити в робочій папці - корисно після того як ви випадково додали файли в індекс

# Переключение на ветку dev и слияние с веткой master
git checkout dev
git merge origin/master


# Pull branch from remote with resolving conflicts
git pull --no-rebase origin <branch_name> 