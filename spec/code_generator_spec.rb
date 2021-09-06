require 'code_generator'
require 'rspec'



describe CodeGenerator do
   it 'exists' do
     code_generator = CodeGenerator.new


    expect(code_generator).to be_an_instance_of(CodeGenerator)
   end

   it '#all_possible_codes' do
     code_generator = CodeGenerator.new

    expect(code_generator.all_possible_codes).to be_an(Array)
   end

   it 'can create a sample hidden code' do
     code_generator = CodeGenerator.new

     expect(code_generator.hidden_code).to be_an(Array)
   end

   it 'can create multiple unique hidden codes' do
     code_generator1 = CodeGenerator.new
     code_generator2 = CodeGenerator.new

     expect(code_generator1.hidden_code).not_to eq(code_generator2.hidden_code)
   end
end
