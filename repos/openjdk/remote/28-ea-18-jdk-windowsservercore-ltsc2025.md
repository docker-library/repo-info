## `openjdk:28-ea-18-jdk-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:2e682605b92249011629c40ec53a78d8717ce695f7d84e78f02e07fea2f94624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `openjdk:28-ea-18-jdk-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull openjdk@sha256:e860d8937bef672055889c046ce289cd103d4aeef33c2a542ba8c048351dc82f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2698088462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7dca1bbadd46c5265399a34daaedd44e068d70c3ed5a5d213f1c02dac6d5e1`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 02 Oct 2026 23:40:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 02 Oct 2026 23:41:31 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 02 Oct 2026 23:41:32 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 02 Oct 2026 23:41:37 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 02 Oct 2026 23:41:38 GMT
ENV JAVA_VERSION=28-ea+18
# Fri, 02 Oct 2026 23:41:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_windows-x64_bin.zip
# Fri, 02 Oct 2026 23:41:40 GMT
ENV JAVA_SHA256=2066c67ef24bf60d7347802ea5a0950c170849790d3b92089368dfb69643e175
# Fri, 02 Oct 2026 23:42:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 02 Oct 2026 23:42:08 GMT
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
	-	`sha256:ff3e33e78c8e306d504286014cc1ba80aa963f7e73355e1a1ccb2ff0d87386ed`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486e67739f574d7ce67af486e56c825e0dbf604d6fcde919c06888bc9142a693`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 388.9 KB (388948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c7fee4c504deb60025d5cff44b1c9811344b09fe16e4a6c730c639fa10f7a6`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ca418d9bde4c2e0eeec391ec8f330ce02e7e886fd0e15e01247f53c1b4c0a8`  
		Last Modified: Fri, 02 Oct 2026 23:42:14 GMT  
		Size: 335.0 KB (334981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80877524e41a1999d6830638591445af8eaeb549c2d1c513685cdae12fa3bf74`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb2f1ee0597b5e97d652c6bbd065373169ad9277e0fe5b84102059662c45d99`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c696d3c74d2f7bdf311616b139bad20c944bba1b0b37f5a155bafcaa238e73`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789f1b717499c3ff8c4375d0dea5c753d12278361bfa4f3fec8d1334589fb3ba`  
		Last Modified: Fri, 02 Oct 2026 23:42:28 GMT  
		Size: 239.7 MB (239727271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db79eb4cfbc9588f17f322e0cb3015aab1b58211ab763c079e0e4de843eb88f`  
		Last Modified: Fri, 02 Oct 2026 23:42:12 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
