# Índice de Conteúdos
1. [Configuração do Python no VSCode](#configuração-do-python-no-vscode)
2. [Instruções Git](#instruções-git)
3. [Instruções sobre como imprimir Notebook](#instruções-sobre-como-imprimir-notebook)
4. [Instruções Streamlit](#instruções-streamlit)
5. [Instruções Uvicorn](#instruções-uvicorn)
6. [Instruções Pipenv](#instruções-pipenv)
7. [Importar arquivos de dependências locais](#importar-arquivos-de-dependências-locais)
8. [Instruções de Markdown](#instruções-de-markdown)

<br><br>
## Configuração do Python no VSCode
USAR POR PADRÃO NO VSCODE O PYTHON QUE INSTALEI PELO MINICONDA. ESTÁ LISTADO COMO (BASE) VERSÃO 3.12.4

<br><br>
## INSTRUÇÕES GIT
1. **Pull (Puxar)**: Antes de começar a trabalhar em um projeto, é uma boa prática atualizar o seu repositório local com as últimas alterações feitas por outros colaboradores. Para fazer isso, você utiliza o comando `git pull`, que puxa as alterações do repositório remoto para o seu repositório local.

2. **Commit (Confirmar)**: Após realizar suas alterações no código-fonte, você precisa confirmar essas mudanças no repositório local. Isso é feito através do comando `git commit`, que prepara as alterações para serem adicionadas ao histórico do repositório.

3. **Push (Enviar)**: Uma vez que você tenha confirmado suas alterações localmente, você pode enviar essas mudanças para o repositório remoto utilizando o comando `git push`. Isso atualiza o repositório remoto com suas últimas alterações.

4. **Pull Request (Solicitação)**: Quando você deseja incorporar suas alterações ao projeto principal (como a branch master), você pode fazer uma solicitação de pull request. Isso significa que você está solicitando que as alterações feitas na sua branch sejam revisadas e possivelmente mescladas na branch principal. Se você estiver editando diretamente na branch principal e der um `git push`, as alterações que você fez na branch principal no seu repositório local serão enviadas para o repositório remoto e refletidas imediatamente na branch principal do repositório remoto.

5. **Merge (Mesclar)**: Após a revisão do seu pull request e aprovação das alterações, um colaborador com permissões adequadas pode mesclar (merge) seu código na branch principal. Isso significa que suas alterações agora fazem parte do código principal do projeto.


<br><br><br>
## INSTRUÇÕES SOBRE COMO IMPRIMIR NOTEBOOK
* Abrir o notebook, clicar nos 3 pontinhos e selecionar EXPORTAR (não são pontinhos os que ficam no canto direito, são os que ficam na mesma linha do "Executar Tudo", quase no meio da tela).
* Exportar primeiro para HTML (usando VSCode) e só depois para PDF (usando o browser).
* É necessário que esteja instalado o pacote `nbconvert`, selecionar o Python BASE e não o do VENV, pois já está instalado nele.
* Se tiver imagens no notebook, deve ser colocado o HTML na mesma pasta do notebook, pois ele tentará ler o caminho relativo das imagens. Se o HTML não estiver no local original do notebook, as imagens irão crashar.




<br><br><br>
## INSTRUÇÕES STREAMLIT
* Não nomear o arquivo do Streamlit como `app.py` se o nome da pasta também for `app`.
* Em vez de usar `streamlit run...`, usar `python -m streamlit run...` como no código abaixo, pois senão ele não irá reconhecer a importação de arquivos em outras pastas do projeto:
  * `python -m streamlit run app\streamlit\app_streamlit.py --server.port=8087 --browser.serverAddress='177.192.12.238'`



<br><br><br>
## INSTRUÇÕES UVICORN
* Instalar o `uvicorn` + `fastapi` localmente no base (fora do virtual env):
  `pip install uvicorn fastapi`
* Após instalado, navegar até a página do router e executar o código abaixo (fora do virtual env):
  `uvicorn main:app --reload`
* No `pipenv`, só precisa instalar o `fastapi`, que será utilizado pelo Streamlit.



<br><br><br>
## INSTRUÇÕES PIPENV
**Este arquivo é sensacional e ensina a utilizar o Pyenv, PipX e o PipEnv:** [Link para o artigo](https://blog.devops.dev/best-practices-for-virtual-environments-for-data-science-pyenv-pipx-pipenv-4140b2974c7c)
<br><br>
### Passo a passo criação do ambiente virtual e inicialização do GIT
### Criar e ativar o ambiente virtual

`$env:PIPENV_VENV_IN_PROJECT=1`

`pipenv install`

`pipenv shell`
 
`Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

`.\\.venv\Scripts\Activate.ps1`
<br><br>
### Verificar se o ambiente está ativo (Se estiver ativo irá aparecer o caminho, senão dará erro)
`pipenv --venv`
<br><br>
### Criar o arquivo .gitignore

`echo "Pipfile.lock" >> .gitignore`

`echo "__pycache__/" >> .gitignore`

`echo "*.pyc" >> .gitignore`

`echo "*.pyo" >> .gitignore`

`echo ".venv/" >> .gitignore`
<br><br>
### Iniciar o repositório Git
`git init`

`git add .`

`git commit -m "Initial commit"`
<br><br>
### Checar pacotes e instalar novos
`pip list`

`pipenv install pandas jupyter`

`pip list`
<br><br>
## Outras Instruções
### Encerrar o pipenv
`deactivate`
<br><br>
### Limpar o cache do GIT
`git rm -r --cached .`

`git add .`

`git commit -m "Limpar cache do Git"`
<br><br>
### Deletar o ambiente virtual (tem de estar dentro do diretório do projeto)
`pipenv --rm`
<br><br>
### Remover o diretório .git e interromper o Git (Tem de estar dentro do diretório do projeto): 
`Remove-Item -Recurse -Force .git`

<br><br><br>
## IMPORTAR ARQUIVOS DE DEPENDÊNCIAS LOCAIS
### Erro ao importar funções de outros arquivos locais
* Adicionar as 3 linhas abaixo como primeiro comando dentro que está chamando a importação. Esse comando adiciona o caminho absoluto da pasta pai nas variáveis de ambiente.
  * **OBS:** Não precisa ter arquivo `__init__.py` dentro da pasta `app`, somente nas pastas filho.
  * A importação deve começar com a pasta `app`, exemplo: `from app.router.routes import *`
    
```python
import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', '..')))
```

<br><br><br>
## INSTRUÇÕES DE MARKDOWN
**Alterar a cor do texto**
```html
<span style="color: red;">Este texto está em vermelho.</span>
```

**Pintar o fundo da célula de outra cor e adicionar bordas redondas**
```html
<div style="background-color: lightblue; padding: 10px; border-radius: 5px;">
```
