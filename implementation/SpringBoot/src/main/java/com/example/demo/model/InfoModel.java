package com.example.demo.model;

public class InfoModel {

	private String groupId;
	private String artifactId;
	private String version;
	private String name;
	private String description;
	private String profile;
	private String ip;
	private String hostname;

	public InfoModel(String groupId, String artifactId, String version, String name, String description,
			String profile, String ip, String hostname) {
		this.groupId = groupId;
		this.artifactId = artifactId;
		this.version = version;
		this.name = name;
		this.description = description;
		this.profile = profile;
		this.ip = ip;
		this.hostname = hostname;
	}

	public String getGroupId() {
		return groupId;
	}

	public String getIp() {
		return ip;
	}

	public String getHostname() {
		return hostname;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public void setHostname(String hostname) {
		this.hostname = hostname;
	}

	public String getArtifactId() {
		return artifactId;
	}

	public void setArtifactId(String artifactId) {
		this.artifactId = artifactId;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

}