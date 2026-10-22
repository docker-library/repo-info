## `julia:rc-windowsservercore`

```console
$ docker pull julia@sha256:151f5d9310dfd63d0320919f403bd13d355492f1f1758eff61d99a64683eac79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `julia:rc-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull julia@sha256:29e6ef13f2126bf3298b0ae7216d86bf93f885a0a4a3cd0e7b4319fd4b8b8a96
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2621734212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352e65f73f64910585f36c424bc94dd5d9229bca2ab2f6a25e13b39996d54c50`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 22:12:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:12:33 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:12:34 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha1-win64.exe
# Wed, 21 Oct 2026 22:12:35 GMT
ENV JULIA_SHA256=fb7a76d32820623436da48cb74cc88ed92d1b967db5bc9e5d4253753fa9cb9cd
# Wed, 21 Oct 2026 22:14:49 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:14:50 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191e7b66cb854415c1a42281cdbe07fa32854ef0e4df6bcc374620de008517f2`  
		Last Modified: Wed, 21 Oct 2026 22:15:00 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9cbfc9a4ad513ab584423f1b2bef20cb048b78f061501db33d259a6a28f982`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26422a1c7b13a2e4687944d72cc4c346913050d35eaa6d4aae0e93b8538564eb`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c4b2f1e7249f91cc386dd5cc00fc97d81758d0576ed28359a78f9718fdc8f8`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e6d50c13b050fa153a203b3411da32e00ade4919a023c0a13604b42fea54ff`  
		Last Modified: Wed, 21 Oct 2026 22:15:26 GMT  
		Size: 229.7 MB (229733436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d677c80ad5e7a67883a007f095911c09546ffe7ae3de657de657d631650a8d`  
		Last Modified: Wed, 21 Oct 2026 22:14:58 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull julia@sha256:5066fa1ad12c5953b68a5d2fd20c7da81eeebfbb3583d5ea51adeea01380c4ec
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2455999337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25cb5a33bdff6eea682dd6fd58b3ca6f2f2f58cf5eba60392d7dc99c2bc76b50`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 22:11:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:11:44 GMT
ENV JULIA_VERSION=1.14.0-alpha1
# Wed, 21 Oct 2026 22:11:46 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.14/julia-1.14.0-alpha1-win64.exe
# Wed, 21 Oct 2026 22:11:49 GMT
ENV JULIA_SHA256=fb7a76d32820623436da48cb74cc88ed92d1b967db5bc9e5d4253753fa9cb9cd
# Wed, 21 Oct 2026 22:17:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:17:04 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50c6aba90dbb9bb75beba9b047d772d576ae55d3a87354de75f0b41ad837331`  
		Last Modified: Wed, 21 Oct 2026 22:17:19 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87c2073742e02ee9dd88db3bcf6fc0f71c96b86f4d7cdb2d66bffaf622da107`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab296ee058a2febcf5415b55b545c70a3d4f83a84da5fe6cc821f5ebed8ff875`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5cfe88a85c9fbd0372696bf455435dd1eb5e82db0511d94a0e5958e94b3c0b`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e1d0767d29258f975e3168596fe2c93d32e35e58fded7f9dd1b99453163e92`  
		Last Modified: Wed, 21 Oct 2026 22:17:46 GMT  
		Size: 229.7 MB (229707260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d669178f16a341c318a4e7c0cc09e8d00a5f1559951cb2b8d4251e04d1fea96`  
		Last Modified: Wed, 21 Oct 2026 22:17:17 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
