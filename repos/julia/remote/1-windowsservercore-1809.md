## `julia:1-windowsservercore-1809`

```console
$ docker pull julia@sha256:35746914a6121deecdf51ca8a1ff1be97f0c75a0a97fdaed35ba35746a97c0f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.17763.3887; amd64

### `julia:1-windowsservercore-1809` - windows version 10.0.17763.3887; amd64

```console
$ docker pull julia@sha256:da7cf74259458474aa0a327bfd13c7c716c228de27b08cc7405c1c921c8a1aa8
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.9 GB (1850736816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5da3bbe97892833b86317ca01e3b1f95f62503ff38cdc51a2fc5b7ce53e0388`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 07:19:09 GMT
ENV JULIA_VERSION=1.8.5
# Thu, 12 Jan 2023 07:19:11 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.8/julia-1.8.5-win64.exe
# Thu, 12 Jan 2023 07:19:12 GMT
ENV JULIA_SHA256=866e160d46c85167d10e8a925776c2fb1cea0f668eb8c80a605842fd35ef28b5
# Thu, 12 Jan 2023 07:20:57 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 12 Jan 2023 07:20:58 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3675ba4f59c5ee1a340fae0285e14c8535992f9ceaa283bb390db36dd09545`  
		Last Modified: Thu, 12 Jan 2023 07:28:08 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301710bb0829772dec6b25593cd71bfde6ed090ff317e03a71665b8ebb22a6c8`  
		Last Modified: Thu, 12 Jan 2023 07:28:08 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbeefba8ced595a52d71e54fe1bb369adaa25449da5abfebab6d5305207683f`  
		Last Modified: Thu, 12 Jan 2023 07:28:08 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba95975008350316d4c7e7a79616e2e9fcddb378a11b2096c856537564e8eef`  
		Last Modified: Thu, 12 Jan 2023 07:28:41 GMT  
		Size: 142.8 MB (142786145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39aa2e074c82c0a10fe6e93ef2b8234944b786a6efba5d2c48df90bbe1c2878`  
		Last Modified: Thu, 12 Jan 2023 07:28:08 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
