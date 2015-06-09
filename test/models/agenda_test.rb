require 'test_helper'

class AgendaTest < ActiveSupport::TestCase
	test 'should not create agenda without any input' do
		agenda = Agenda.new
		assert_not agenda.save, 'Saved an agenda without input'
	end
end