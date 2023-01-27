## `openjdk:20-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:f845c4c24c1293e6b17b4860bcde49e11e7f8559add72ce975854f2b14398622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `openjdk:20-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull openjdk@sha256:27ea38b825d0746602dbc54e36d102d2503db617fe0c72f29cdcf9c77db39285
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1580855809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09e147b5120cf03c4348b7562507781facfd34da756d23298ea50592926e179`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:07:34 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 05:12:21 GMT
ENV JAVA_HOME=C:\openjdk-20
# Thu, 12 Jan 2023 05:12:42 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:21:21 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:21:23 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_windows-x64_bin.zip
# Fri, 20 Jan 2023 22:21:24 GMT
ENV JAVA_SHA256=d3262d55f68f9b39161904f92008266aa3590d775dcd8fadf78291bd21be3b70
# Fri, 20 Jan 2023 22:22:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:22:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa8e5b91e3c425a756945d0dec251c1595992592fd0dcf4df0ec0a7962717eb`  
		Last Modified: Thu, 12 Jan 2023 05:22:24 GMT  
		Size: 614.6 KB (614563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e473ae08f0a0a264ab6f873890549b89c65b8bdb708438338c229d6bb80f4084`  
		Last Modified: Thu, 12 Jan 2023 05:24:23 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6f6e1b656f7612da0ef96aa76c88ddb66ccc536e23899b449c43784f4ba0bd`  
		Last Modified: Thu, 12 Jan 2023 05:24:23 GMT  
		Size: 552.6 KB (552562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b43d2b3481ed9cfeb680c53bfd5d3e9c48b730d3cb531359d14696b06708e88`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5cdf54d59a376e30298d4041056e329b9263dc74717e4dbf06d8d3f6de6c925`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb36605330534b2a2a4c5e5373fa8cc4b1151740bb7701a2b8ff9a982e65b14`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ddf911bacb48d90d08714e6995f9a9b1cd978be8e9226173ab293199cbd2c3`  
		Last Modified: Sat, 21 Jan 2023 02:21:35 GMT  
		Size: 193.7 MB (193651061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9137bc266b4f05c8aceb10b9beb5a0bdccfb5c0ce28fae8c11d1cde4a380f88`  
		Last Modified: Sat, 21 Jan 2023 02:21:13 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
