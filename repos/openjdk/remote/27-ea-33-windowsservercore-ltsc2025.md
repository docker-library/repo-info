## `openjdk:27-ea-33-windowsservercore-ltsc2025`

```console
$ docker pull openjdk@sha256:1f13c1b9e85988e8731576fb67cd06d8378354621b87d2d83768d13a4779acd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `openjdk:27-ea-33-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull openjdk@sha256:ead33946bc8b159843161f0324d5315a1a494c57dfbc33232e18ce703334889d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2579357969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb053065df3697a9a0bfb8deff383512e1089896580456cedace0a2623520cea`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Tue, 04 Aug 2026 00:59:44 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 04 Aug 2026 01:00:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:21 GMT
ENV JAVA_HOME=C:\openjdk-27
# Tue, 04 Aug 2026 01:00:27 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath; 	Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:28 GMT
ENV JAVA_VERSION=27-ea+33
# Tue, 04 Aug 2026 01:00:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk27/33/GPL/openjdk-27-ea+33_windows-x64_bin.zip
# Tue, 04 Aug 2026 01:00:29 GMT
ENV JAVA_SHA256=b0cb0a5e7a3a55c33156aafff55edd46f46b7e7f306743285691c76bc7d79263
# Tue, 04 Aug 2026 01:00:54 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Verifying install ...'; 	Write-Host '  javac --version'; javac --version; 	Write-Host '  java --version'; java --version; 		Write-Host 'Complete.'
# Tue, 04 Aug 2026 01:00:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a35ca151f110438c3c4bfe658e4db1feccc940c5c87e053e4cb9688768ac883`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e45ff04c56a7871831e4d2309fc5d5074bbf584bf340962c599ff05c292bf4`  
		Last Modified: Tue, 04 Aug 2026 01:01:02 GMT  
		Size: 395.9 KB (395903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055dde483976554840827cf4807a92d9d536f7e19d70d1f8dad5f511ba79626f`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426385c908ca9e619050b8a9e49c3721f30a76ffebd3fa9ebf1f1e654f706056`  
		Last Modified: Tue, 04 Aug 2026 01:01:01 GMT  
		Size: 385.1 KB (385110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c831c66cc6729a98059290789f4f2541c5988337eb70cb994b5f74a3e366c24e`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12759576ea7e027c985cf2971413534af9590ca5d22d12202923e53f1673cff7`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9698a4b8944a28d4b6a1223b0f28da4c76aea52c2829302556d90585cbb17a`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205ff888e3d6db6f569160a0df896b1e41117503e8a15ccf66b16c956c361f43`  
		Last Modified: Tue, 04 Aug 2026 01:01:13 GMT  
		Size: 223.6 MB (223560987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee87e5af35949d4b83c0b33755ab8aad484e2e9f7c5a6fe9ebf3a36279fffc73`  
		Last Modified: Tue, 04 Aug 2026 01:00:59 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
