#language: pt

Funcionalidade: Cadastrar tarefas
    Sendo uma aplicação web cliente 
    Posso solicitar requisições POST para o serviço tasks
    Para que as tarefas do ususário sejam cadastradas no sistema

   
    Contexto: Autenticação
        Dado que o usuário está autenticado
            | email    | larissa.jacob@gmail.com eu |
            | password | 123456                     |

        @post_tasks
        Cenario: Nova tarefa

        E o ususário @post_tasksinformou a seguinte tarefa
        | title   | Ler um livro de javascript |
        | dueDate | 31-03-2018                 |
        | status  | false                      |

        E o usuário tagueou esta tarefa com
            | tag     |
            | ruby    |
            | livro   |
            | leitura |
            | estudar |
        Quando faço uma solicitação POST para o serviço tasks
        Então o código de resposta HTTP deve ser igual a "200"
        E esta tarefa deve ser cadastrada com sucesso