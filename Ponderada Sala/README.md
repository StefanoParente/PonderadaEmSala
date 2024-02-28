# Testes do Smart Contract Anac

## Casos de Teste

### Teste 1: Verificação da Idade Padrão
- **Objetivo**: Verificar se a idade padrão é definida como 18 quando o contrato é implantado.
- **Procedimento**: Implantar o contrato e chamar a função `getIdade`.
- **Resultado Esperado**: A função `getIdade` deve retornar `18`.

### Teste 2: Alteração da Idade pelo Dono do Contrato
- **Objetivo**: Garantir que o dono do contrato possa alterar a idade.
- **Procedimento**: 
  1. O dono do contrato chama a função `setIdade`, passando um novo valor de idade.
  2. Chamar a função `getIdade` para verificar a nova idade.
- **Resultado Esperado**: A função `getIdade` retorna o novo valor de idade definido pelo dono.

### Teste 3: Tentativa de Alteração da Idade por Não-Dono
- **Objetivo**: Verificar que apenas o dono do contrato pode alterar a idade.
- **Procedimento**: 
  1. Uma conta que não é dona tenta chamar a função `setIdade`.
  2. Verificar a mensagem de erro.
- **Resultado Esperado**: A transação é revertida com a mensagem "Somente o dono pode alterar a idade."

## Conclusão
Os testes confirmam que o contrato `Anac` funciona conforme esperado.
