class SecurityRule < Jets::Rule::Base
  scope("ComplianceResourceTypes" : [ "AWS::EC2::SecurityGroup" ])
  def protect
    puts "event #{event.inspect}"
  end
end
