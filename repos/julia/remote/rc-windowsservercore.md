## `julia:rc-windowsservercore`

```console
$ docker pull julia@sha256:b85a482f855eaae69faea2bc5160b9eea89ad836507f90b1ca350e4e74fd0e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `julia:rc-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:c264110be79b2108b1ebbf194bbc8f6ebb8180cff18198c7b69c2034d3f9acd7
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2756438812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978f67551c2725c8acbaa38bbed96576ebedf0be5087c1f3cd71e9f0390133e2`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 14 Aug 2026 20:12:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Aug 2026 20:12:05 GMT
ENV JULIA_VERSION=1.13.0-rc3
# Fri, 14 Aug 2026 20:12:06 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc3-win64.exe
# Fri, 14 Aug 2026 20:12:07 GMT
ENV JULIA_SHA256=853b10c1e09988132d18fedf8a13388f8f814dc1aaff4123f37a7bea8ab29adb
# Fri, 14 Aug 2026 20:14:51 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 14 Aug 2026 20:14:51 GMT
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
	-	`sha256:761c8b490da78c448eadf5b7fa24eb6e757b99e0ce661b1841613810bd6bb89d`  
		Last Modified: Fri, 14 Aug 2026 20:15:09 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b14500012faa6703570d2f73de96f723f097dbe53568aad6efc7466bcc50d8`  
		Last Modified: Fri, 14 Aug 2026 20:15:07 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4742a501bc3e3354cbe3b2c7ffd1cdcd455d51f9d19abe1e9551fc3d4084745`  
		Last Modified: Fri, 14 Aug 2026 20:15:07 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa45e5c84a5389aab97be37f0e69cbd5e205ce2d9bb475ff7f5cf21d72ea9e2`  
		Last Modified: Fri, 14 Aug 2026 20:15:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3524aef6f61b40fe5506b77613ed360d8b3a0789e68407b489bd33385f3da9`  
		Last Modified: Fri, 14 Aug 2026 20:15:47 GMT  
		Size: 315.6 MB (315646919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27da4c302da50403d8a0efe9d56870c68ea7f2530ccd00c7df097480c920f009`  
		Last Modified: Fri, 14 Aug 2026 20:15:07 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull julia@sha256:f717367fdc9b219941753099a68e358b260c2ffb737fa5c6479bf6c600184e33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2499622797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8a28ad88c5568e9c4dd541124149dca50c47f541bc0adbef26d76a86c4f34c`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 14 Aug 2026 20:12:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Aug 2026 20:12:05 GMT
ENV JULIA_VERSION=1.13.0-rc3
# Fri, 14 Aug 2026 20:12:05 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc3-win64.exe
# Fri, 14 Aug 2026 20:12:06 GMT
ENV JULIA_SHA256=853b10c1e09988132d18fedf8a13388f8f814dc1aaff4123f37a7bea8ab29adb
# Fri, 14 Aug 2026 20:13:55 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Fri, 14 Aug 2026 20:13:58 GMT
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
	-	`sha256:fc6727f673aaad6d31e5f9b4ec7bacfddadf6bd94b4f0bec61c20d7251f947a4`  
		Last Modified: Fri, 14 Aug 2026 20:14:10 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f545de596757a5a4740902216658894c94c37e2b653a83bea4c784857f745d`  
		Last Modified: Fri, 14 Aug 2026 20:14:09 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7c7f27f4e120b03e27b20a397235e1bae60f2c38d3d069c8fb85c5808290e4`  
		Last Modified: Fri, 14 Aug 2026 20:14:09 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518965b6cdde61becd43a60baa1749cb1134343d7844ef7f967c436a53d17fc0`  
		Last Modified: Fri, 14 Aug 2026 20:14:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359084dc6bfe992f79702b503a7ac4feffa4564d1829850976d459bd8a51fbc0`  
		Last Modified: Fri, 14 Aug 2026 20:14:51 GMT  
		Size: 315.6 MB (315618910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49867df46a0b7ae1123b112add9f7555c06a4af6721b1d2a4d034803696e1f6`  
		Last Modified: Fri, 14 Aug 2026 20:14:09 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
