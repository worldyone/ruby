class HeloController < ApplicationController
    layout 'helo'

    def index
        @header = 'layout sample'
        @footer = 'copyright HIKARI-Amano 2020.'
        @title = 'New Layout'
        @msg = 'this is sample page!'
    end
end

=begin
    def index
        if request.post? then
            @title = 'Result'
            if params['s1'] then
                @msg = 'you selected: '
                for val in params['s1']
                    @msg += val + ' '
                end
            else
                @msg = 'not selected...'
            end
        else
            @title = 'Index'
            @msg = 'select radio button...'
        end
    end

end

    def index
        if request.post? then
            @title = 'Result'
            if params['r1'] then
                @msg = 'you selected: ' + params['r1']
            else
                @msg = 'not selected...'
            end
        else
            @title = 'Index'
            @msg = 'select radio button...'
        end
    end

end

    def index
        if request.post? then
            @title = 'Result'
            @msg = 'you typed: ' + params['check1'] + '.'
            @value = params['check1']
        else
            @title = 'Index'
            @msg = 'type text...'
            @value = ''
        end

        if params['msg'] != nil then
            @title = params['msg']
        else
            @title = 'index'
        end
        @msg ='this is redirect sample...'
    end

    def other
        redirect_to action: :index, params: {'msg': 'from other page'}
    end
end
=end