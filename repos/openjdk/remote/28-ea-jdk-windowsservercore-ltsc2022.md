## `openjdk:28-ea-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:5fa97458482eef78d70e7af24848fdb0cce8ee5772d739c17b69a5181dd15eb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `openjdk:28-ea-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull openjdk@sha256:952236de4faf2a6f82cdf73300a690dc338f490b776935bdef71f7312049f9ad
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459927112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb939eafc954f1e252a48a160da6915c6ac560ae47a33f66a111d9fb170266cb`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 18:45:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 18:47:11 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:47:12 GMT
ENV JAVA_HOME=C:\openjdk-28
# Fri, 25 Sep 2026 18:47:24 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:47:24 GMT
ENV JAVA_VERSION=28-ea+17
# Fri, 25 Sep 2026 18:47:25 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk28/17/GPL/openjdk-28-ea+17_windows-x64_bin.zip
# Fri, 25 Sep 2026 18:47:26 GMT
ENV JAVA_SHA256=16ddf389a8cd7a2b99ff3b3aebd13bf08fe7b680bf4f37eaf3147f8b5e7729d5
# Fri, 25 Sep 2026 18:49:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 25 Sep 2026 18:49:52 GMT
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
	-	`sha256:d626303cd7cbfc0dc8498a12cdfb6b2a5c53d9334e1f1e714cbc3749efe2705e`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f95653cb1a9200e0c73f9d552e44aed6cd13d8b778da61dd97e5e842f1d185b`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 362.9 KB (362868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8caa259c0c5fe8404a68423ef7954e99640a9fdf2c9ab5f29512c485139d6926`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7d33e79e1ac4d07451034cc26852be0e3ea93608ad3e556af98dcbd293e5c`  
		Last Modified: Fri, 25 Sep 2026 18:50:11 GMT  
		Size: 339.5 KB (339545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f72c627d0aff6443f78570c7e1e3d331550f2642fb3bf069051127d1742c655`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1cafaedd3643f4ffccfa9798acd9792d1c139f572983251ffe9842845de7cf`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dccaa74de4eda4e561f80035a5f051e14a55cc19ddf23bb276d4f0126b1b209`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47b8a8aa88c05c2ae320bf5cacbc700840763a4a231c62178a4582eec8c5907`  
		Last Modified: Fri, 25 Sep 2026 18:50:26 GMT  
		Size: 239.7 MB (239728132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17dc5a495ad1279f7a99a3f42a2ea56f70a47de6aecf0ff2e395d10e42bcdf68`  
		Last Modified: Fri, 25 Sep 2026 18:50:09 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
