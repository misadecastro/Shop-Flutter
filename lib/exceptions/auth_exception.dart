class AuthException implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'O e-mail já está cadastrado para outra conta.',
    'OPERATION_NOT_ALLOWED': 'Operação inválida',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Acesso bloqueado temporariamente. Tente novamente mais tarde.',
    'EMAIL_NOT_FOUND': 'Usuário ou senha inválida.',
    'INVALID_PASSWORD': 'Usuário ou senha inválida.',
    'USER_DISABLED': 'A conta do usuário foi desabilitada.',
    'INVALID_LOGIN_CREDENTIALS': 'Usuário ou senha inválida.'
  };

  final String key;

  AuthException(this.key);

  @override
  String toString() {    
    return errors[key] ?? 'Ocorreu um erro durante a autenticação.';
  }
}
