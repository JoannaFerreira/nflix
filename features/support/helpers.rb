module Helpers
    def get_token
        #validando o token
        js_script = 'return window.localStorage.getItem("default_auth_token");'
        @token = page.execute_script(js_script) 
    end
end