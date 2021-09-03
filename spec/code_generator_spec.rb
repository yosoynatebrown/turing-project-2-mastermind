require 'code_generator'
require 'rspec'
require 'sequence'


describe CodeGenerator do
   it 'exists' do
     code_generator = CodeGenerator.new


    expect(code_generator).to be_a(CodeGenerator)
   end

   it '#all_possible_codes' do
     code_generator = CodeGenerator.new

    expect(code_generator.hidden_code).to be_an(Array)
   end
end
