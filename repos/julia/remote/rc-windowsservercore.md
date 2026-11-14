## `julia:rc-windowsservercore`

```console
$ docker pull julia@sha256:736b5fa13f7804fc60e31c63bbe01be5c76a49599d9a576c223134eb31384acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `julia:rc-windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull julia@sha256:2f340eb8f963e72e8cab0803c4ed24990adbf422c1d2f076ccd7d5b960eeb005
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2632660939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da66ecaf1ad929a4ae8581adb423a6b7aee2065eb8430a2f86e3f95c8bdf3bdb`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Sat, 14 Nov 2026 00:25:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 14 Nov 2026 00:25:15 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Sat, 14 Nov 2026 00:25:17 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-beta1-win64.exe
# Sat, 14 Nov 2026 00:25:18 GMT
ENV JULIA_SHA256=91d2984f7dfa990e7ac500d19f6ff92bb7a210af43dbcc3fca1ba45d291a74de
# Sat, 14 Nov 2026 00:27:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Sat, 14 Nov 2026 00:27:01 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bce8b7d83da95ef546f8d52f8d3d227474b5d6b225bd83c19a034d1bff40d5`  
		Last Modified: Sat, 14 Nov 2026 00:27:08 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2176503291040192d2f48f75c78a951793a5de85728494aec09dbae9090f17`  
		Last Modified: Sat, 14 Nov 2026 00:27:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d63ceff4d4d61eb97724c1dea670a9fee9c6e5d800847e285242764b99f14a`  
		Last Modified: Sat, 14 Nov 2026 00:27:07 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3353f05c76a740a1d965c6478cc00c171305d9d1095b85e06c19ad33663c1dc`  
		Last Modified: Sat, 14 Nov 2026 00:27:07 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634e18fd570b6e4de8d14eb186c211b7103801df442d6d46d75f7d242a1a4a53`  
		Last Modified: Sat, 14 Nov 2026 00:27:36 GMT  
		Size: 225.3 MB (225323602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2980ab4cb7195bc3b59895b1fd5c3e13ffc79565aeae68832aeef6f1ec8a9056`  
		Last Modified: Sat, 14 Nov 2026 00:27:07 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull julia@sha256:00b75c36264472bb27f393d175c731ae47cc2b0a9fc84e84b788486a2533d323
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2471602888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f461bf0048393687eacd8f82e3875bd2e935fd3a79011557d8df1b73d78407`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Sat, 14 Nov 2026 00:43:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 14 Nov 2026 01:00:18 GMT
ENV JULIA_VERSION=1.14.0-beta1
# Sat, 14 Nov 2026 01:00:18 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-beta1-win64.exe
# Sat, 14 Nov 2026 01:00:19 GMT
ENV JULIA_SHA256=91d2984f7dfa990e7ac500d19f6ff92bb7a210af43dbcc3fca1ba45d291a74de
# Sat, 14 Nov 2026 01:01:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Sat, 14 Nov 2026 01:01:23 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e846341c5bdbf9be6570bc9683fbaedf58d31907e2caf235d0cbde4c4837da5`  
		Last Modified: Sat, 14 Nov 2026 00:48:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6fb3dc12c5c49ae3e0e3f81950080ec55b53f80fff3d0fa7bd29c5784c64cb`  
		Last Modified: Sat, 14 Nov 2026 01:01:28 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0896dc87d643a5a3f0f348958674d027ef8beada2fe66f181e70f6e4cd11a4d`  
		Last Modified: Sat, 14 Nov 2026 01:01:28 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e8eb6a3da9434134d431d37f9c85f274bcfacda9aed00daf9633599cda4b9`  
		Last Modified: Sat, 14 Nov 2026 01:01:28 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac17c0a741cdbcb80bc74187d5d73a76469adadea328a3d2490cbcff1544d2d7`  
		Last Modified: Sat, 14 Nov 2026 01:01:56 GMT  
		Size: 225.2 MB (225248555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214f056177cc28dc466c1d58932384c80d1dba41eb682119691248a6a291bb81`  
		Last Modified: Sat, 14 Nov 2026 01:01:29 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
