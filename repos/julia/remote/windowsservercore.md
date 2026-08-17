## `julia:windowsservercore`

```console
$ docker pull julia@sha256:9c54ed163bc3d8df94143e89cbe060a3db6c6fa161313cc6e162f8151ffe9ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `julia:windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:59bcedcac3d7b11e1e11ec62281f04ddb126b89b0513fb605768c7e863b925b3
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2734870192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08bf06730e8db3104c503293b3fb81907a97e748b2412c015d26dc718cf4595`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Mon, 17 Aug 2026 17:45:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 17 Aug 2026 17:45:31 GMT
ENV JULIA_VERSION=1.12.7
# Mon, 17 Aug 2026 17:45:33 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.7-win64.exe
# Mon, 17 Aug 2026 17:45:35 GMT
ENV JULIA_SHA256=7d5113091702be4ea6eaa99f06896471fa5f3574d34fbb77826a59e279be9765
# Mon, 17 Aug 2026 17:50:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Mon, 17 Aug 2026 17:50:10 GMT
CMD ["julia"]
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
	-	`sha256:b62762ae91e6550e508016ad8468c04d8e0257f3cd9da1862673d29748044278`  
		Last Modified: Mon, 17 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cad5e62ded4b1af649a9e37369d8c5181f830061f04f90c938f6af9a727dda`  
		Last Modified: Mon, 17 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c5c1ca9ef2a641393fa6254ef32ba2b2813247131dc3b85878413bf85d831d`  
		Last Modified: Mon, 17 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e9c4e9e1d205f4fc8fdae8449743ed16e6c9edafc3dc3c642c56cb39800c89`  
		Last Modified: Mon, 17 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3bf79a413f9a50fab900917f6cb218a5886ae383a70bd0434455c4427bba63`  
		Last Modified: Mon, 17 Aug 2026 17:51:01 GMT  
		Size: 294.1 MB (294078309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc4709f2e10ffd3d919da6cc87cf9f8a6782867610985c220902ab525f8d849`  
		Last Modified: Mon, 17 Aug 2026 17:50:25 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
