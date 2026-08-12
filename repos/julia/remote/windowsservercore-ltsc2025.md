## `julia:windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:dcaf5baf4006aee07d04a11d012cb9fc3609125de1d4dd21705d51456b903edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `julia:windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:d20afe82cb0e8b975bae2a738cacaa9eca950054c9ca511f670cf370acf0764c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2729307070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f707134f65a78e492a0f7d4d42afa39a7c5ac7b5db10de8e62f4136e094a482c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:34:09 GMT
ENV JULIA_VERSION=1.12.6
# Wed, 12 Aug 2026 17:34:11 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.12/julia-1.12.6-win64.exe
# Wed, 12 Aug 2026 17:34:12 GMT
ENV JULIA_SHA256=de2d50f23995d71c224423a4872673a4e9be2c9676fc975cd90b25fc3a5e6cb6
# Wed, 12 Aug 2026 17:36:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:37:00 GMT
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
	-	`sha256:c3bf9629e3b114b952c8857ccb303d4df4a5bcdeb86edb8a93fcb5278560c99d`  
		Last Modified: Wed, 12 Aug 2026 17:37:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66e35171a44daa0abfe6714e83dc60a734a0afd539a8d65b7b63487a69c0635`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef132e897fe6a0a811405f49a2940cb155f584be990730d2f2f9215913054f7`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade3d89d423e991811ccf2f92a10725e2c751c7b2df440e90bfacd28b10be891`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4c2e1fd3c49380ed8f88b799d99048e217e06a54fc20c91d3a4f398cbbbe44`  
		Last Modified: Wed, 12 Aug 2026 17:37:50 GMT  
		Size: 288.5 MB (288515187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fff1b84e3c8881ccf6f1866bfa0f566ff46aec8d1db7a6f7c74be2878bcdd44`  
		Last Modified: Wed, 12 Aug 2026 17:37:11 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
