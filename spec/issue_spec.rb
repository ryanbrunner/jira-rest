require 'spec_helper'

describe Jira::Issue do
  describe "#find" do
    subject { Jira::Issue.find(id) }
    
    context "valid issue" do
      let(:id) { "APP-3" }
      it { should be_instance_of Jira::Issue }
    end

    context "invalid issue" do
      let(:id) { "KEY-1" }
    
      specify {
        expect {subject}.to raise_error
      }
    end
  end  

  describe "simple fields" do
    simple_fields = ["summary", "issuetype", "security", "resolution", "resolutiondate", "reporter", "created", "updated", "description", "duedate", "status", "assignee", "project", "environment"]

    subject { Jira::Issue.find("APP-3") }
    simple_fields.each do |field| 
      it { should respond_to field }
    end
  end

  describe "collection fields" do
    collection_fields = ["timetracking", "votes", "fixVersions", "watcher", "worklog", "labels", "links", "sub-tasks", "versions", "components", "comment"]

    subject { Jira::Issue.find("APP-3") }
    collection_fields.each do |field| 
      it { should respond_to field }
      its(field) { should respond_to(:each) }
    end
  end
end