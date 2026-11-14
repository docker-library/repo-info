## `julia:1-windowsservercore`

```console
$ docker pull julia@sha256:4908dbcd21dde5981c4b84680e4d28168bee8e0ef66f206cfc7bd6bd3fbb05cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `julia:1-windowsservercore` - windows version 10.0.26100.33822; amd64

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

### `julia:1-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull julia@sha256:09774526e8ee8eda5da780ed439cf7500e4ab5cc247ea33bad73d168295fd622
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 GB (2555940969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f2f68286ad868c29b68e0ce090b0a2ac1c83907ff8cdcb9ef6a272dbbc0ae5`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Sat, 14 Nov 2026 00:43:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 14 Nov 2026 00:43:26 GMT
ENV JULIA_VERSION=1.13.4
# Sat, 14 Nov 2026 00:43:27 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.4-win64.exe
# Sat, 14 Nov 2026 00:43:29 GMT
ENV JULIA_SHA256=3c8379cc34b51616b9d2b3014c75c57f14afd3ea940bf540cbdf9ae339224b58
# Sat, 14 Nov 2026 00:48:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Sat, 14 Nov 2026 00:48:07 GMT
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
	-	`sha256:6e846341c5bdbf9be6570bc9683fbaedf58d31907e2caf235d0cbde4c4837da5`  
		Last Modified: Sat, 14 Nov 2026 00:48:19 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6494e9e415a9a3361c1a5e3073b664c1548393227686bcd5b791a1951b8cef0`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7881e0cd59c754b1594455c7dd37c94c7b34b8e8917e39d8a6217291342f70bc`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:180f985471f843e2664b1bed42899bcdfd7f1bfa218b0e50cbdd6a5a0a47894d`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c65ed38afc59deef88582a07499b51ae0bd7f4fc89fda8ee211e9b883cb44a1`  
		Last Modified: Sat, 14 Nov 2026 00:48:55 GMT  
		Size: 309.6 MB (309586661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1071ea026a8619f1ea1994a6c8102b98131f098568748201385085767b905243`  
		Last Modified: Sat, 14 Nov 2026 00:48:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
