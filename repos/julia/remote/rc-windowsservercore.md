## `julia:rc-windowsservercore`

```console
$ docker pull julia@sha256:afe6d913edff06731d3a351b65414a54548a73926b79a08e991ee063ee4bafbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `julia:rc-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:1e6e55e597d467e6e62d9eb0be530680bb9bb0b13db34d108fd76177a6c6e9bd
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2750240321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845babd804a5d764a94e606bffd95a490cef2a8597918b844e2e5314de581111`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Thu, 03 Sep 2026 23:25:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 03 Sep 2026 23:25:40 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:25:41 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc4-win64.exe
# Thu, 03 Sep 2026 23:25:42 GMT
ENV JULIA_SHA256=1a7cbc243d576485d59d085872d0beb4f8fe977bfa25c37979c4e16a36e47cde
# Thu, 03 Sep 2026 23:28:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 03 Sep 2026 23:28:07 GMT
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
	-	`sha256:11e568591931490e1e7ec978b074bfcd6c72b91f9a17b47e96cfb43e4dbe72a3`  
		Last Modified: Thu, 03 Sep 2026 23:28:13 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d2df08f79dc93ba5f61c4506dbed397851956c867ada41b60b6b77207bfeac`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d47a5d28c26f999a0d2eaeb1579ff9588d203dc81cb975dd7267366fa6d2fc7`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efd0e61f4d8c93145cf44508bf5fc2dc49fb94f172c866c9ad6aaa092dddc05`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e183982e6f763f90902ba63089b43d3282a1eb81fcf2d3e1680fd01f5694261e`  
		Last Modified: Thu, 03 Sep 2026 23:28:50 GMT  
		Size: 309.4 MB (309448448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f774f015df8fb1cb25faf5867543f0037b8486fd9eb28f7e06ce36d982593`  
		Last Modified: Thu, 03 Sep 2026 23:28:12 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull julia@sha256:1fcd924dc53ff471d32646ed499c96330e9ec0f3d040f35bdccf490f4da29688
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2493410088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c8e040eff09254e55f80fcf493a1a337a73315f171d1e530f07dfcafd92659`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Thu, 03 Sep 2026 23:45:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 03 Sep 2026 23:45:35 GMT
ENV JULIA_VERSION=1.13.0-rc4
# Thu, 03 Sep 2026 23:45:36 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc4-win64.exe
# Thu, 03 Sep 2026 23:45:37 GMT
ENV JULIA_SHA256=1a7cbc243d576485d59d085872d0beb4f8fe977bfa25c37979c4e16a36e47cde
# Thu, 03 Sep 2026 23:48:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Thu, 03 Sep 2026 23:48:11 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32af9f62747befe9a8cfb455b98c57c461e3d55979c1234ee57b49981d78a652`  
		Last Modified: Thu, 03 Sep 2026 23:48:17 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7ac2c37093a89920298d732c29ac793237a506be582b383e68eec9f954306`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c633d4cfcd380adb2868c0eaf127a6800d751f0ae0c0ef683a3d7d3d5b34f2`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f04e96945d2f7061a89dfd7508d244a30b54c12aa018beccea7271ce8ebb177`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3881a524728691b34f930fcd3f6261808fbdeddda709c9a1ebdaf5c3687dfa`  
		Last Modified: Thu, 03 Sep 2026 23:48:58 GMT  
		Size: 309.4 MB (309406080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8c46002a2e6875c901d235b1d3b93f1ec142f9ccf11d00f83fb5eb03688d2f`  
		Last Modified: Thu, 03 Sep 2026 23:48:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
