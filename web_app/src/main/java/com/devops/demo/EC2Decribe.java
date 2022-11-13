package com.devops.demo;



import com.amazonaws.util.EC2MetadataUtils;

public class EC2Decribe {
	
	public String fetchCurrentInstanceDetails() throws Exception{
		
		EC2MetadataUtils.InstanceInfo info = EC2MetadataUtils.getInstanceInfo();
		info.getInstanceId();
		info.getPrivateIp();				
		return "Instance ID:"+info.getInstanceId()+ " and Private IP Address "+ info.getPrivateIp();		
	}
}
