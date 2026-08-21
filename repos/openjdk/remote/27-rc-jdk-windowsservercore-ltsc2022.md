## `openjdk:27-rc-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:d02d9afc0db5a501d12e71a4d0ee8ffe28834570be0fdeb94cf3e00c9faca876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `openjdk:27-rc-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull openjdk@sha256:c47c1414eec86bd2498e165b21f5927dc8bff02811a5707363edcdb0c7e8df76
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2408234439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c29b44f130d621abc241ca8b9ee4dd870ccc47f283c3e3635078b91f7b17fe7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 21 Aug 2026 17:46:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 21 Aug 2026 17:47:59 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:48:00 GMT
ENV JAVA_HOME=C:\openjdk-27
# Fri, 21 Aug 2026 17:48:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:48:08 GMT
ENV JAVA_VERSION=27
# Fri, 21 Aug 2026 17:48:08 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk27/55ce5470a6294008af0057ff4626d0e5/35/GPL/openjdk-27_windows-x64_bin.zip
# Fri, 21 Aug 2026 17:48:09 GMT
ENV JAVA_SHA256=41172837168dd25a8d9fe5eb253ac1efc568c5f9ff608144bcacadfdf50f876c
# Fri, 21 Aug 2026 17:48:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 21 Aug 2026 17:48:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434a4b389be160fa579bc402c8d442a0687c758845e3fc8c8a01a5f97fbebc99`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff24a60f6f8a43f64e1dc223c938cf0ee9cbb5295c5f5fc154b7a60d5b0402`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 362.1 KB (362095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d510494e9f896a5efc2e16b672a93b6f68cac43f35f68480b8f88955e4ae792`  
		Last Modified: Fri, 21 Aug 2026 17:48:41 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb16885026f514b946829a7c5888c399f49871af82c83d9f17bf85f242ef7d6`  
		Last Modified: Fri, 21 Aug 2026 17:48:42 GMT  
		Size: 339.2 KB (339231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c379707d3786583992325ec7622631c26004bdba4354ecb784063983487b4238`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea25f7e25009dc24b833ea7b8f3a55e291b50ab24c07451c24435f0974dc8e87`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5999c2cc2bf2b2cd0f5fb17cac7532a64066a2b942386f7f34d9982f62b5da8`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe4c83df733ddeda566ed8b39ea3ca2517932343c791c986eedd9f5b8c158be`  
		Last Modified: Fri, 21 Aug 2026 17:48:52 GMT  
		Size: 223.5 MB (223527816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30d3095d13da9ebfa75d2e6bc44175daa31516377e150e59593004d5978126`  
		Last Modified: Fri, 21 Aug 2026 17:48:39 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
