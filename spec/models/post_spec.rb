require 'spec_helper'

describe Post do
  context 'validations' do
    it { should validate_presence_of :title}
    it { should validate_presence_of :content}
    end
end

