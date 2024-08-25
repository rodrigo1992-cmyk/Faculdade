------------------------------INSTRUÇÕES GIT-----------------------------------


1.Pull (Puxar): Antes de começar a trabalhar em um projeto, é uma boa prática atualizar o seu repositório local com as últimas alterações feitas por outros colaboradores. Para fazer isso, você utiliza o comando git pull, que puxa as alterações do repositório remoto para o seu repositório local.

2.Commit (Confirmar): Após realizar suas alterações no código-fonte, você precisa confirmar essas mudanças no repositório local. Isso é feito através do comando git commit, que prepara as alterações para serem adicionadas ao histórico do repositório.

3.Push (Enviar): Uma vez que você tenha confirmado suas alterações localmente, você pode enviar essas mudanças para o repositório remoto utilizando o comando git push. Isso atualiza o repositório remoto com suas últimas alterações.

4.Pull Request (Solicitação): Quando você deseja incorporar suas alterações ao projeto principal (como a branch master), você pode fazer uma solicitação de pull request. Isso significa que você está solicitando que as alterações feitas na sua branch sejam revisadas e possivelmente mescladas na branch principal. Se você estiver editando diretamente na branch principal e der um git push, as alterações que você fez na branch principal no seu repositório local serão enviadas para o repositório remoto e refletidas imediatamente na branch principal do repositório remoto.

5.Merge (Mesclar): Após a revisão do seu pull request e aprovação das alterações, um colaborador com permissões adequadas pode mesclar (merge) seu código na branch principal. Isso significa que suas alterações agora fazem parte do código principal do projeto.

------------------------------INSTRUÇÕES ENV-----------------------------------
Passo a passo criação do ambiente virtual e inicialização do GIT
# Criar e acessar o diretório do projeto
mkdir meu_projeto
cd meu_projeto

# Iniciar o VsCode (importante o ponto no final)
code .

# Criar e ativar o ambiente virtual
$env:PIPENV_VENV_IN_PROJECT=1
pipenv install

# Criar o arquivo .gitignore
echo "Pipfile.lock" >> .gitignore
echo "__pycache__/" >> .gitignore
echo "*.pyc" >> .gitignore
echo "*.pyo" >> .gitignore
echo ".venv/" >> .gitignore

# Iniciar o repositório Git
git init
git add .
git commit -m "Initial commit"
# Iniciar ambiente virtual
pipenv shell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
.\.venv\Scripts\Activate.ps1

# Checar pacotes e instalar novos
pip list
pipenv install requests pandas jupyter
pip list

Outras Instruções
# Encerrar o pipenv
deactivate

# Limpar o cache do GIT
git rm -r --cached .
git add .
git commit -m "Limpar cache do Git"

# Limpar o cache de um arquivo específico no GIT
git rm --cached nome_do_arquivo
git add .
git commit -m "Limpar cache do Git"

# Deletar o ambiente virtual (tem de estar dentro do diretório do projeto)
pipenv --rm
#
Remover o diretório .git e interromper o Git (Tem de estar dentro do diretório do projeto): 
Remove-Item -Recurse -Force .git