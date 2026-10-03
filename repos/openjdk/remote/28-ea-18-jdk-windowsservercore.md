## `openjdk:28-ea-18-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:f804de1fbe25f8f7d31c590ec9157c910369405dde20d826ab9f8a4216e41618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-18-jdk-windowsservercore` - windows version 10.0.26100.33438; amd64

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

### `openjdk:28-ea-18-jdk-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:1f1ca000fff8a8bbea7979472508a5d490c007caa46bdcb42a5a22e3a492ff31
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459947316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2374ff1e58868a8cd532dda9ee2bc809e7e696ead088680193f3f66f177652e`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Sat, 03 Oct 2026 00:23:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Oct 2026 00:24:04 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Sat, 03 Oct 2026 00:24:04 GMT
ENV JAVA_HOME=C:\openjdk-28
# Sat, 03 Oct 2026 00:24:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Sat, 03 Oct 2026 00:24:11 GMT
ENV JAVA_VERSION=28-ea+18
# Sat, 03 Oct 2026 00:24:12 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/18/GPL/openjdk-28-ea+18_windows-x64_bin.zip
# Sat, 03 Oct 2026 00:24:13 GMT
ENV JAVA_SHA256=2066c67ef24bf60d7347802ea5a0950c170849790d3b92089368dfb69643e175
# Sat, 03 Oct 2026 00:26:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Sat, 03 Oct 2026 00:26:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c197863238a0d321956149808066ebae4afbf67279113a8a03659c03c67278`  
		Last Modified: Sat, 03 Oct 2026 00:26:40 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5dc18c1f84c387e78ce9af7fdb3245df95abf7c2cb870b849f4bd1fc703ff3`  
		Last Modified: Sat, 03 Oct 2026 00:26:41 GMT  
		Size: 362.3 KB (362263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3003eb311e9c66f0ed37cc0b1932bc6811a5fe3ee8acccd3c56d0d3017a5196`  
		Last Modified: Sat, 03 Oct 2026 00:26:40 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722ec797e23d4a87c76c93a7b21cfa910c41d672f59d6f44d44fd34e52ce7bdc`  
		Last Modified: Sat, 03 Oct 2026 00:26:40 GMT  
		Size: 339.1 KB (339139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9db5b068f9ef2137b8f35ff11bd3f586734279be42c45c071696c988458149c`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f69ecc5c18e8502aa69b4d84497a27b00e9840c8bbc23aee2013fece59525da`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b90e279fa0fd9712be0074aa321cde1b2f90724f97f2ddbf4ef67e246a4aa0`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73b52ffa9d9c78ddd79c770408b067e65541cd4bbe7e26b9fb358cef42626b9`  
		Last Modified: Sat, 03 Oct 2026 00:26:55 GMT  
		Size: 239.7 MB (239749314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46eb7dc4736f81e328ed2b866676bef33dd7d9c7e684f5e6c2b1c38bb5bbe0b`  
		Last Modified: Sat, 03 Oct 2026 00:26:38 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
