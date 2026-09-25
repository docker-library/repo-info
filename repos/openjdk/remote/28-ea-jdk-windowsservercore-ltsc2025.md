## `openjdk:28-ea-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:39eed509f56df99ba4626d6d893b8e357f8110e5a9f600f762217584a8def846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:2228b97b7e14fa5551a135c0220b5836b072b58236d1991f065b73dc57021a97
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698152554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d681aa2fa385b8b7ec280a1e577c74cc6c29cd114f33a126a2421c69f510becd`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 18:22:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 18:24:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:24:13 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 25 Sep 2026 18:24:19 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:24:20 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:24:21 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_windows-x64_bin.zip
# Fri, 25 Sep 2026 18:24:22 GMT
ENV JAVA_SHA256=16ddf389a8cd7a2b99ff3b3aebd13bf08fe7b680bf4f37eaf3147f8b5e7729d5
# Fri, 25 Sep 2026 18:25:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:25:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219fcbfdaca01d3425457ba2beb6bac0cc76ace5134c4e0c8bc4ef9192b76da2`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca0bf4745d31165c51eb0d256bcb50e650b77b5c84dcf9b56b6e804cd00f394`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 389.1 KB (389062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ce743866e5f8a19ab0475071850e4b2b1b85073674eb53713da087c3e8a75`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b08ab6b6ea5cde9cd3b3c2515d6b12f96562234955ee5b0a050fd02d9bffb3e`  
		Last Modified: Fri, 25 Sep 2026 18:25:10 GMT  
		Size: 375.4 KB (375404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012e73e819d9012d3e9d93396c9e499b00f250dc8f587e4cc536257dd363e435`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0b8b66671e131d5d7276202e6a7a76a20fcd7cb34133c2ddbe37868ff14c16`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9437322d287780262f76ca6d071feb412b7c133b0a7081ae087125681661b25a`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70af59dac41a35bd5e4de3722bcfbba465e0e1b9991fa81cdae150b852a3644c`  
		Last Modified: Fri, 25 Sep 2026 18:25:23 GMT  
		Size: 239.8 MB (239750714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb50aa845a07f06370c8bd840b442f7700af1941a7bd3159581d2d3c7bcf29de`  
		Last Modified: Fri, 25 Sep 2026 18:25:08 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
