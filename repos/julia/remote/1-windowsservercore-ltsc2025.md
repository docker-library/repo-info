## `julia:1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:df1df8ec6c23952068c5bf40818a62cb5fc54426e5bcf0ecb63d896c72147c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `julia:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull julia@sha256:f65e4f93c1ec7523384675e9584975b474a598cb82864dcf93d573a864c6b79d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2751709054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc1ca75ad10307163b653905814310b58186f6f53be76cce4f88b62420f0e45`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:32:02 GMT
ENV JULIA_VERSION=1.12.7
# Wed, 09 Sep 2026 22:32:04 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.7-win64.exe
# Wed, 09 Sep 2026 22:32:05 GMT
ENV JULIA_SHA256=7d5113091702be4ea6eaa99f06896471fa5f3574d34fbb77826a59e279be9765
# Wed, 09 Sep 2026 22:34:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:34:15 GMT
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
	-	`sha256:e7b5a66eab7b5f15a463aff8ab14f48b32e2cc705064cf8d7586423813256d87`  
		Last Modified: Wed, 09 Sep 2026 22:34:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878a99a158c44bf1c8f66f4bdbe27cc165a77630c69edf804fb78894a9be685f`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07196a148fa8439c97b96151ffdf994e9ccf4168c1beef9f9dfa8b1791c22e8e`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26d61292cb0208966985f48478d7afc7da32c6f6297fe421522086ea9914df2`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a1812b06aeeaf9cc9fb214e327007554816a3cdbeb6ad68d9c4e66bcd74550`  
		Last Modified: Wed, 09 Sep 2026 22:35:00 GMT  
		Size: 294.1 MB (294073033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2065a54e97a1ada99008921a49dca6c2c0dd4c951cb8cba238142c34fe45cf`  
		Last Modified: Wed, 09 Sep 2026 22:34:22 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
