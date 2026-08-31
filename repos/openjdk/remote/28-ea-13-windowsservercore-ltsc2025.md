## `openjdk:28-ea-13-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:b4f3ab7c650b44aaefc7f35a6c54449c234d95d750ce81c511781ca856260850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `openjdk:28-ea-13-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull openjdk@sha256:15a9fb17fb69085f2cbbb62bfb5c4f98269ca86ca369bf12a1b2032ceacb5d61
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2681054127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2eaa10692dd530923bac332a25895e969cf63ee41666412a05080d5a6d3e56c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Mon, 31 Aug 2026 18:26:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 31 Aug 2026 18:59:40 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:41 GMT
ENV JAVA_HOME=C:\openjdk-28
# Mon, 31 Aug 2026 18:59:47 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Mon, 31 Aug 2026 18:59:48 GMT
ENV JAVA_VERSION=28-ea+13
# Mon, 31 Aug 2026 18:59:48 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/13/GPL/openjdk-28-ea+13_windows-x64_bin.zip
# Mon, 31 Aug 2026 18:59:49 GMT
ENV JAVA_SHA256=ce62b045ffcf2b48561efc5b705bab8d43142df4fa0515352a1359db8ad0a6bd
# Mon, 31 Aug 2026 19:00:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Mon, 31 Aug 2026 19:00:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a39e9d992a670491d7af72f74377f6cbb8c42ce70306ef7deea2b5087c7447`  
		Last Modified: Mon, 31 Aug 2026 18:28:48 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e08e7e322b144faaf9079cf65a3960eb9b0baf1d1d2e17a82e37331a20feb68`  
		Last Modified: Mon, 31 Aug 2026 19:00:21 GMT  
		Size: 387.8 KB (387775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121a92c65fbf280e53931194e775129a226ff593730a750f1dc5ca89f296fe1b`  
		Last Modified: Mon, 31 Aug 2026 19:00:21 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16468d29f42a649c584a70f4e34fd9214953b3e56c3eb76289476b74e3c48761`  
		Last Modified: Mon, 31 Aug 2026 19:00:20 GMT  
		Size: 373.5 KB (373531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b525f52b7c92826c8972dbbcf8c636c0e59aeb5be3bf999daab34325a98368bb`  
		Last Modified: Mon, 31 Aug 2026 19:00:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98cc74ab70fd451080ceb4ea0cce3f3a655ecd9fda4e91ebf92b0ee0ba2bd9a`  
		Last Modified: Mon, 31 Aug 2026 19:00:18 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565e067daa3cf1681accce790d365a0dc71d7a79b5cd1f6141e6fca3cf753f3b`  
		Last Modified: Mon, 31 Aug 2026 19:00:18 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92984678248bccd0c5ebfc325a1c1e575e2c6d441452108617d1ad5d4dfc737f`  
		Last Modified: Mon, 31 Aug 2026 19:00:35 GMT  
		Size: 239.5 MB (239499590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f71519464439aa7d7e35acbd954a054da79ec269ce1d1eb6cfa6b115f882706`  
		Last Modified: Mon, 31 Aug 2026 19:00:18 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
