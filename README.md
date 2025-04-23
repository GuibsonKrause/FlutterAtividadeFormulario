
# 🧪 Desafio Flutter: Cadastro de Usuário com Validação Completa

## 🎯 Objetivo

Criar uma tela de cadastro de usuário com **formulário validado**, que contenha os seguintes campos:

- 👤 **Nome completo** (obrigatório, mínimo de 3 caracteres)
- 📧 **E-mail** (obrigatório, formato válido)
- 🔒 **Senha** (obrigatória, mínimo de 6 caracteres)
- 🔒 **Confirmar senha** (obrigatória, deve ser igual à senha)

Ao clicar no botão **"Cadastrar"**, o formulário deve validar todos os campos.  
Se estiver tudo certo, deve exibir uma **mensagem de sucesso com o nome do usuário**.

---

## ✅ Regras e Requisitos

- Utilizar `Form` e `TextFormField` com `validator`.
- Utilizar `TextEditingController` para capturar o conteúdo digitado.
- Criar uma função para validar se as senhas são iguais.
- Exibir mensagens de erro **abaixo de cada campo** quando inválidos.
- Mostrar um `SnackBar` com a mensagem:

> 📢 Cadastro realizado com sucesso, [NOME]!

---

## ✨ Bônus (opcional)

Se quiser ir além, implemente também:

- ✅ Validação de senha exigindo **1 número** e **1 letra maiúscula**.
- ✅ Adicionar um `Checkbox` com o texto **"Aceito os termos de uso"**.
  - O botão "Cadastrar" só deve funcionar se esse checkbox estiver marcado.
- ✅ Adicionar um botão **"Limpar"** que limpa todos os campos e reseta o formulário.

---

## 🧩 Código Modelo (Base)

> O código base está pronto com o layout e estrutura do formulário.  
> Sua missão é **completar a lógica de validação e interações**.

---

## 📝 O que você precisa fazer

### 🔹 1. Completar a Validação dos Campos

Preencha as funções `validator` nos campos:

- `Nome completo`: obrigatório, no mínimo 3 caracteres
- `E-mail`: obrigatório e com `@` e `.`
- `Senha`: obrigatória, no mínimo 6 caracteres, contendo número e letra maiúscula (bônus)
- `Confirmar senha`: obrigatória, deve ser igual à senha

---

### 🔹 2. Lógica do Botão `Cadastrar`

Na função `_cadastrar()`, implemente:

- `if (_formKey.currentState!.validate())` para validar todos os campos
- Verificação do checkbox `_aceitaTermos`
- Exibição de `SnackBar` com:
  ```
  Cadastro realizado com sucesso, [NOME]!
  ```

---

### 🔹 3. Lógica do Botão `Limpar`

Na função `_limparCampos()`, implemente:

- `.clear()` nos controladores
- `_formKey.currentState!.reset()` no formulário
- `setState(() { _aceitaTermos = false; })` para desmarcar o checkbox

---

## 💡 Dica

Use `setState()` sempre que precisar atualizar a interface.  
Teste seu formulário com entradas erradas para garantir que tudo está funcionando corretamente.

---

👨‍💻 Boa prática, bom código e divirta-se codando!
