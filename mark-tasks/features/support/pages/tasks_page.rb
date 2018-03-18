
require_relative 'sections'

class Adicionar < SitePrism::Section
    element :input_titulo, 'input[name=title]'
    element :input_data, 'input[dueDate]'
    element :salvar, 'form-submit-button'

    def nova (titulo, data)
        input_titulo.set titulo
        input_data.set data
        salvar.click
    end

end   


class  TasksPage < SitePrism::Page

    section :nav, Navbar, '#navbar'

    section :adicionar, Adicionar, '#add-task-view'

    element :titulo, '.header-title h3'
    element :botao_novo, '#insert-button'

end