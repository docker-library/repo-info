## `julia:windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:496497d9ed01a9bdca3a1a6de3f3d2b12a3b9426deb5fed5fbd6f078853ad4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `julia:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull julia@sha256:65e441742671a5752a26c966d847efec3037fd9daad38fd9e0f35bd5216df8f7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2446136861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f919386d9985d8c3bb21979e6b7ca881988da4cef0912fd3a92fdff5eeb6909e`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:02:58 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 15 Jul 2026 23:02:59 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Wed, 15 Jul 2026 23:03:00 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Wed, 15 Jul 2026 23:08:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:08:26 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c00ba1350c35eeae49e5f2370495fe0e2dad23cdc65dc7b0b7ac20efa44792f`  
		Last Modified: Wed, 15 Jul 2026 23:08:39 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496a9ae934332239912507515f38316fc65a8e661870f5df9f66aeb82ba83d80`  
		Last Modified: Wed, 15 Jul 2026 23:08:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1ea7a07385adbb0610e4ebec1c1634bf8cfd7c1fb5c6ba94f80d3668808c0c`  
		Last Modified: Wed, 15 Jul 2026 23:08:38 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbfd035dd98329ccc56e6c6b54b298fd8e810c503e2cb63d70058b853a2b1fe`  
		Last Modified: Wed, 15 Jul 2026 23:08:38 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef13fa7c3b82cb39202389d82b9185634ec58c7cfd34f7dff90adf217c25acf9`  
		Last Modified: Wed, 15 Jul 2026 23:09:13 GMT  
		Size: 288.6 MB (288577137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c618c8b5a9a477e1c93717702bc07eaa3ccbcb9ab4e0128e054323ba158f6756`  
		Last Modified: Wed, 15 Jul 2026 23:08:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
