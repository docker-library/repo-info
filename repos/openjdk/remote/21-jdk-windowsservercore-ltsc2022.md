## `openjdk:21-jdk-windowsservercore-ltsc2022`

```console
$ docker pull openjdk@sha256:221fc32c00406c5c83140ffd3e021349bb1b66cd8dbff12a44b6d01810293bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `openjdk:21-jdk-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

```console
$ docker pull openjdk@sha256:29bd6a30840171ee54c60489703807e827baf65abe42889a43cdd8faa5543ab2
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 GB (1581773775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58292d957c1649f2e7946d1b17f3e812a08ab9941dc14c4073e42eeb3e6a37a7`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:07:34 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Thu, 12 Jan 2023 05:07:35 GMT
ENV JAVA_HOME=C:\openjdk-21
# Thu, 12 Jan 2023 05:07:57 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:16:30 GMT
ENV JAVA_VERSION=21-ea+6
# Fri, 20 Jan 2023 22:16:32 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk21/6/GPL/openjdk-21-ea+6_windows-x64_bin.zip
# Fri, 20 Jan 2023 22:16:33 GMT
ENV JAVA_SHA256=7b6fc834d28b4beb09ec65861767bab492c8375f1840c9df33c79e8521d4f955
# Fri, 20 Jan 2023 22:17:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Fri, 20 Jan 2023 22:17:52 GMT
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
	-	`sha256:6284573ed998f0926754c8fd5dc7faff95102e54cf06b0d280cd07428b048e11`  
		Last Modified: Thu, 12 Jan 2023 05:22:23 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee2720203565dd5e40979d2f76187379d7c05254dd58609d0f974f653b1db40`  
		Last Modified: Thu, 12 Jan 2023 05:22:24 GMT  
		Size: 552.5 KB (552462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cce8ee928cc2744119f7d564eb83205271d7612f37c7e56b516fccb17532f6`  
		Last Modified: Sat, 21 Jan 2023 02:19:12 GMT  
		Size: 1.5 KB (1452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ae3be27c69b7ed746ea1d2ac96a8ca1ee1702f53a010c9c7bec1e0eccde6f8e`  
		Last Modified: Sat, 21 Jan 2023 02:19:11 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2185f9fd7249dd254eb38118ea1dd98b7cbe160f44ba112531b89d370fd604c`  
		Last Modified: Sat, 21 Jan 2023 02:19:12 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ebaaaeac657741d815afc2850ce1674a1eebffdbbb09d542688f79758de768d`  
		Last Modified: Sat, 21 Jan 2023 02:19:35 GMT  
		Size: 194.6 MB (194569278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2be264bcaf79de33df15e48e792674b8daa647cdf2fe2d8738fe94955ebaa8`  
		Last Modified: Sat, 21 Jan 2023 02:19:12 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
