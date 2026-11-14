## `julia:1-windowsservercore-ltsc2025`

```console
$ docker pull julia@sha256:d3998f6a43cfb7fd05679c3007e67c770c5e933fce1b803fe63c229816c8ea9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `julia:1-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull julia@sha256:8a3b24677bcfd0f713e9a8f28e435e492707c1936a381154616ba37484583dac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2716944868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f4023d4554c92a9bb00da7411cc12f098b95a662da27d618ff33760ddf8cfff`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Sat, 14 Nov 2026 00:20:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 14 Nov 2026 00:20:18 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:20:19 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.4-win64.exe
# Sat, 14 Nov 2026 00:20:21 GMT
ENV JULIA_SHA256=3c8379cc34b51616b9d2b3014c75c57f14afd3ea940bf540cbdf9ae339224b58
# Sat, 14 Nov 2026 00:22:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Sat, 14 Nov 2026 00:22:36 GMT
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
	-	`sha256:57b9394c0dfd52cb6f86cb8951546cc90e772e7f269cb36bf35d357660c87581`  
		Last Modified: Sat, 14 Nov 2026 00:22:42 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6142a4d0b6a0817018e0a55cf7dad0bcec6d2f23647c05226a94d7b3f2b38b`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397d1e92acbf5c7e7b2b2f60248f7302d9cf1afb1bf85811ec0e7fec0e42f135`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188748ec5c5a93e6357c449c31ffff57bb51df58f3fa5d472c0001410ab083b6`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac3090252b6bceebaa693b77631f350a1fc89c86c26c2dae348305f9c347e1c`  
		Last Modified: Sat, 14 Nov 2026 00:23:18 GMT  
		Size: 309.6 MB (309607519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04f6e27657c31c5ae2eef1b9684793c4025e84cc0303dafcd3bd38b2ee9ee`  
		Last Modified: Sat, 14 Nov 2026 00:22:40 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
