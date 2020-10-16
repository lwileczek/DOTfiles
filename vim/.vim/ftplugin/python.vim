" ~/.vim/ftplugin/python.vim

" Check Python files with flake8 and pylint.
let b:ale_linters = {'python': ['flake8']} " pylint, bandit, mypy  

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8']

setlocal textwidth=80
