require_relative 'sections'


class  PerfilPage < SitePrism::Page

    section :nav, Navbar, '#navbar'

    element :input_empresa, 'input[name$=company]'
    element :combo_cargo, 'select[name$=job]'
    element :salvar,'button[id*=form-submit-button]'
    element :formulario, '#user-settings-profile-edit-form'

    def atualiza(empresa, cargo)
        input_empresa.set empresa
        combo_cargo.find('option', text:cargo).select_option
        salvar.click
    end
end