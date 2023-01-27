## `openjdk:20-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:21e99db7a426491252b4463eb45c50b3521d03effb8b3602f94680c703df7491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `openjdk:20-jdk-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull openjdk@sha256:ebcb8052da5943dfa0877053bdb656bec6f948c3927d3ff07a050e664b7b1838
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1902080034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d1c89bd5591e47ddbd2e83a6999b0b67f2028be4804645742cff306783c3d27`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:09:35 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 05:13:49 GMT
ENV JAVA_HOME=C:\openjdk-20
# Thu, 12 Jan 2023 05:14:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:22:49 GMT
ENV JAVA_VERSION=20-ea+32
# Fri, 20 Jan 2023 22:22:50 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk20/32/GPL/openjdk-20-ea+32_windows-x64_bin.zip
# Fri, 20 Jan 2023 22:22:52 GMT
ENV JAVA_SHA256=d3262d55f68f9b39161904f92008266aa3590d775dcd8fadf78291bd21be3b70
# Fri, 20 Jan 2023 22:24:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:24:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fe1d317f0927d209417077d671ba0fb8e3b7ff9c583727da819f0d16252e80`  
		Last Modified: Thu, 12 Jan 2023 05:23:04 GMT  
		Size: 367.5 KB (367453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204fb4de92b3c2f3fbd44e35eab6a78c6001ee4da68e9f00b462472e9636c486`  
		Last Modified: Thu, 12 Jan 2023 05:25:04 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b5262ccef5459e1e9f746ac49749d63fee0bb98296c21086879d1d379e8e7a`  
		Last Modified: Thu, 12 Jan 2023 05:25:04 GMT  
		Size: 320.0 KB (319987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5951ec2b637023493d77fe7c9057a6c778ae36082ed10f69d1588c746885e26`  
		Last Modified: Sat, 21 Jan 2023 02:21:52 GMT  
		Size: 1.4 KB (1435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8cce3e75393b6e2bbe38bba7696a97aad6e502e58ac31ea5e4eb7579fa02c93`  
		Last Modified: Sat, 21 Jan 2023 02:21:52 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a88d4256b952df3287f5482154e6549620b6518b19a37d00d0f6a1c90290c16`  
		Last Modified: Sat, 21 Jan 2023 02:21:53 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbee345adf167061851bba6134beef9117647f725a39e81c08d6e2974209739`  
		Last Modified: Sat, 21 Jan 2023 02:22:16 GMT  
		Size: 193.4 MB (193440153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efde4bc204cf790674daebbffd1ab408ab7ef0fb44a2a8b193291c9cd581a47`  
		Last Modified: Sat, 21 Jan 2023 02:21:53 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
