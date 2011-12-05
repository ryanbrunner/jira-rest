require 'spec_helper'

describe Jira::Issue do
  describe "#find" do
    subject { Jira::Issue.find(id) }
    let(:id) { "KEY-1" }
    before { Jira::Issue.stub(:get).and_return(response) }

    context "valid issue" do
      let(:response) { Factory.build(:issue_response) }
      it { should respond_to :name }
    end

    context "invalid issue" do
      let(:response) { Factory.build(:issue_response_not_found) }
      it { should raise_error }
    end
  end  
end