## `julia:windowsservercore`

```console
$ docker pull julia@sha256:353b6d328b781ed35af5d7c443b7b174cbf2a74f7abec751426791011c1c9056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `julia:windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull julia@sha256:82ac536028ee59d3e8af9d898af3db9b31d9c1337855c64cb4080a048239eafa
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 GB (2716965659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9e1e42d56e4f119343f84fb612a1ed4a3a3e2a726cd7961be6200f83581de01`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:50:26 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 11 Nov 2026 21:50:28 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.3-win64.exe
# Wed, 11 Nov 2026 21:50:29 GMT
ENV JULIA_SHA256=3928c7d1a908eb4797f9ca064cf62757fc49198360ee8251f4a6df9f35c6f9ad
# Wed, 11 Nov 2026 21:52:26 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:52:27 GMT
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
	-	`sha256:166b0f52b5a4f4d55b3f8b9ed128b5f17a93a0a32109f41ec036982179aecd0d`  
		Last Modified: Wed, 11 Nov 2026 21:52:33 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8ee5acc6356fbed85a067e3ed73bb81a8e7a214cf10bb212af164817b9a6be`  
		Last Modified: Wed, 11 Nov 2026 21:52:31 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edee886651201184ba4429c77097ffdf6e4ee49e29d23fcf40b8f2e2bdf7b6e5`  
		Last Modified: Wed, 11 Nov 2026 21:52:31 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6da7997f350914c3aa4ef1055126eca23ab237836e96644fe3e1e4db1156bd`  
		Last Modified: Wed, 11 Nov 2026 21:52:31 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8a0d0d95e98c5650fdfbf24d93c4557b462ec8ce290f59496ef6584c5a3362`  
		Last Modified: Wed, 11 Nov 2026 21:53:10 GMT  
		Size: 309.6 MB (309628375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371d97903f2acb80d0a88eb13a0f9a553747af8e8c1f1aa4ad0ebe9382ea5fdc`  
		Last Modified: Wed, 11 Nov 2026 21:52:31 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull julia@sha256:7f9b46dd27ce5307b8a98be600855a7d520a8fd5883ac827893331c495fc8743
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2555950620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e9172110d1cd02263b1d0d2694419ce5b7e7b01724ab58d895842348e8a55cc`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:51:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 21:51:04 GMT
ENV JULIA_VERSION=1.13.3
# Wed, 11 Nov 2026 21:51:05 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.3-win64.exe
# Wed, 11 Nov 2026 21:51:06 GMT
ENV JULIA_SHA256=3928c7d1a908eb4797f9ca064cf62757fc49198360ee8251f4a6df9f35c6f9ad
# Wed, 11 Nov 2026 21:54:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 21:54:47 GMT
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
	-	`sha256:59f4d5422eed2c478715bb4732415753d4fe16fb151638b8a66d61f84668b2e1`  
		Last Modified: Wed, 11 Nov 2026 21:55:04 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c92188f19a73c7a233bfb47dcad8820dcd29be9b9611df17412f984ee4093a`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22367b81d01667e176b41e137a20d7d6ba422970a9beacb45e10e1a8eb29c74`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd2747f09e1acb77125b88ac35b9d3362c7ff6b96d78078b0c9976ebe718475`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c46d239e43becd418575f4d85fb8e68c1bf4d72497f07a35e2423b06f6cc048`  
		Last Modified: Wed, 11 Nov 2026 21:55:41 GMT  
		Size: 309.6 MB (309596315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7439ccabc4c27c896c77a6570c9a5a3f2264b5454d03a0a2bdcabf824147dcf0`  
		Last Modified: Wed, 11 Nov 2026 21:55:02 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
