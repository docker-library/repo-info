## `julia:1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:418a4a431dd51d44914bd70d6ed9e6d3fb58a4c9edf2420365567e7657939723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:847eadd680c72fc03dbd1f1647beaf76aad52cba04bfb5ed3245081159c2e2eb
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2767479001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20da9dfe8b684d73aa175276ebbc7df884f526fd9f24abad4f7cae53874af7eb`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 10 Sep 2026 20:38:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 Sep 2026 20:38:41 GMT
ENV JULIA_VERSION=1.13.0
# Thu, 10 Sep 2026 20:38:42 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-win64.exe
# Thu, 10 Sep 2026 20:38:43 GMT
ENV JULIA_SHA256=146312fdcf5884541ec5e53db5e24a773f5b3a00f00e464ed8ca5d318a81eab2
# Thu, 10 Sep 2026 20:40:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 10 Sep 2026 20:40:29 GMT
CMD ["julia"]
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
	-	`sha256:d806c86937324739b958a22eab8d8343a4f13740f5de57556b83f8145bdb10fa`  
		Last Modified: Thu, 10 Sep 2026 20:40:35 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7b32ba9f38f01b6b30254bf12eec40a5acad50bca9d3785feb2719e420622a`  
		Last Modified: Thu, 10 Sep 2026 20:40:33 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f44e0aebca6126b86bc5c5ec4c455dec56ae29b3489224b07ac5a056e4b948`  
		Last Modified: Thu, 10 Sep 2026 20:40:33 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2e9650f5e3bf970368130870004ef63971223ed27df48bc7391926e39f6c02`  
		Last Modified: Thu, 10 Sep 2026 20:40:33 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac533e94339632e3fc2d5f1e94506062cd501ad0172bbec55d903210cb637f51`  
		Last Modified: Thu, 10 Sep 2026 20:41:11 GMT  
		Size: 309.8 MB (309842916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1c8ffd742de6e8ae342dc45aaea0b9bcbe4d82485acbfdc53d03ff14b7535f8`  
		Last Modified: Thu, 10 Sep 2026 20:40:33 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
