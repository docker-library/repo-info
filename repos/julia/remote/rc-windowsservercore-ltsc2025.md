## `julia:rc-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:d07e15b8abb87756362ff36f919226f283795c2ea3188f4b6f0e66d01a95803f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `julia:rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:a7830e46330f4ec257ee47880b0ba26020d9553677bd429b74b312ffac1fb403
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2753017219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a79d7f4192a3a74e20edc3dbdc4a84542aed29f0a31fd74e47e6c52fb2a0c973`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:34:10 GMT
ENV JULIA_VERSION=1.13.0-rc1
# Wed, 12 Aug 2026 17:34:11 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc1-win64.exe
# Wed, 12 Aug 2026 17:34:12 GMT
ENV JULIA_SHA256=58e3b22f9e99b94f99bd81d26ca049ef1b4fd9aa0f58e7eb0d984f56cd76d4cf
# Wed, 12 Aug 2026 17:36:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:36:57 GMT
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
	-	`sha256:7c130f2a1aeaab8878e1b0043170b6b4fc6a37bbb862bc134e6b03d3044c5f38`  
		Last Modified: Wed, 12 Aug 2026 17:37:16 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d996a38923eaee407131071ad52149c8922cc14041f3534873754efa04bf86`  
		Last Modified: Wed, 12 Aug 2026 17:37:15 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e1789e689b7937ae83e4be4d2e663595a36561d068e4a5a89a91ae88431105`  
		Last Modified: Wed, 12 Aug 2026 17:37:15 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae36a5226a64a63d257f48aa4d64db7a43b75f4aab0cede09d454e5535791641`  
		Last Modified: Wed, 12 Aug 2026 17:37:15 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705092144a28bd5d4b5f74d267e1aa6a35dbf0f6584266d85fa939fe7c851c63`  
		Last Modified: Wed, 12 Aug 2026 17:37:59 GMT  
		Size: 312.2 MB (312225338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360396ce16494eb53d5f4f5aac32528e6b60c5cfbb3514a75bf47a60859bda4b`  
		Last Modified: Wed, 12 Aug 2026 17:37:15 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
