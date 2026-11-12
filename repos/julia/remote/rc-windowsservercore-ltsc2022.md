## `julia:rc-windowsservercore-ltsc2022`

```console
$ docker pull julia@sha256:7fa1f775574b54221d8b5e52676a33acb06577da530f06e39215fa50c8cfbf11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `julia:rc-windowsservercore-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull julia@sha256:9d06a4812538c3b897bf13e263d1921bc0c7451a9e8cd0d6bd22074a53ee103a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2476428630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccca4c25c5f206512c02884ff8ce5d15d45a108d53863d00aa5c34d3e474a947`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:00:37 GMT
ENV JULIA_VERSION=1.14.0-alpha2
# Wed, 11 Nov 2026 22:00:37 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha2-win64.exe
# Wed, 11 Nov 2026 22:00:38 GMT
ENV JULIA_SHA256=68f49717241692c0c7022d4e3fa567af4659e723e0c5b04d24668a98f30aa46c
# Wed, 11 Nov 2026 22:03:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:03:02 GMT
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
	-	`sha256:3e4ef424dfaba895bf0c6c2b9e302375628dafa983e3fd708e8b0acb5b57e943`  
		Last Modified: Wed, 11 Nov 2026 21:52:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad002b563772a14d4c2533a668e8be46445a443c484e0e7bea90e962af7dd68`  
		Last Modified: Wed, 11 Nov 2026 22:03:16 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41318c29c81f58400e216136905df967b4281a17f7ffc1a3798523b413a6854b`  
		Last Modified: Wed, 11 Nov 2026 22:03:16 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5952b3666144ea050a1ae16d2360a172bfe044548f09ffe4cce158ed3e7556a1`  
		Last Modified: Wed, 11 Nov 2026 22:03:16 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfcbb30f74f91b80dff041f858633d969369d63a9d6ae02ec90145d0f21d5b7c`  
		Last Modified: Wed, 11 Nov 2026 22:03:43 GMT  
		Size: 230.1 MB (230074255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922f26fbf0c847e29a451e9b933572157b95da0d17c710c686dd7f1d0ca2c3e4`  
		Last Modified: Wed, 11 Nov 2026 22:03:16 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
