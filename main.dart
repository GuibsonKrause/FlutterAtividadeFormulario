import 'package:flutter/material.dart';

void main() {
  runApp(CadastroApp());
}

class CadastroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Usuário',
      home: Scaffold(
        appBar: AppBar(title: Text('Cadastro')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CadastroForm(),
        ),
      ),
    );
  }
}

class CadastroForm extends StatefulWidget {
  @override
  _CadastroFormState createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  final _formKey = GlobalKey<FormState>();

  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmaSenhaController = TextEditingController();

  bool _aceitaTermos = false;

  void _cadastrar() {
    // TODO: Implementar validação dos campos e exibir SnackBar com nome do usuário
  }

  void _limparCampos() {
    // TODO: Limpar os campos e resetar o formulário
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          TextFormField(
            controller: _nomeController,
            decoration: InputDecoration(labelText: 'Nome completo'),
            validator: (value) {
              // TODO: Validar nome (obrigatório e mínimo 3 caracteres)
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'E-mail'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              // TODO: Validar e-mail (obrigatório e formato válido)
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _senhaController,
            decoration: InputDecoration(labelText: 'Senha'),
            obscureText: true,
            validator: (value) {
              // TODO: Validar senha (mínimo 6 caracteres, número, maiúscula)
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _confirmaSenhaController,
            decoration: InputDecoration(labelText: 'Confirmar senha'),
            obscureText: true,
            validator: (value) {
              // TODO: Validar se é igual à senha digitada acima
              return null;
            },
          ),
          SizedBox(height: 16),
          CheckboxListTile(
            title: Text('Aceito os termos de uso'),
            value: _aceitaTermos,
            onChanged: (value) {
              setState(() {
                _aceitaTermos = value ?? false;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: _cadastrar,
                child: Text('Cadastrar'),
              ),
              OutlinedButton(
                onPressed: _limparCampos,
                child: Text('Limpar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
