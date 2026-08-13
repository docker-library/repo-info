## `julia:rc-windowsservercore`

```console
$ docker pull julia@sha256:5f994ca3c2adbfdac15c9be55ad5e4528a6e622696e493877d7cd703bb8514a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `julia:rc-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull julia@sha256:bfca2b20fb8b1b1255ff43aa4f5e1caa03ca2bd12f2a76cb7c5bfe09d1c76826
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2758859329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56caf4c47b1cf12c82fef3b9c1c1368502a74e3ecf1c108b22eaca7d20b9ddec`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 20:46:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 20:46:13 GMT
ENV JULIA_VERSION=1.13.0-rc2
# Wed, 12 Aug 2026 20:46:14 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc2-win64.exe
# Wed, 12 Aug 2026 20:46:15 GMT
ENV JULIA_SHA256=c2e39a69a17fb01ebf77997b64fcf93afbfb0fe2c62bd123a17934ac90990833
# Wed, 12 Aug 2026 20:49:17 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 20:49:17 GMT
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
	-	`sha256:e6ae4205457f1712a26147033228631ca9b78b2f299237251cc13f3b392250a8`  
		Last Modified: Wed, 12 Aug 2026 20:49:35 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb11152ea324eedd3278092746ff203b057c7576d333305868866a352892f0c`  
		Last Modified: Wed, 12 Aug 2026 20:49:34 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36f4aff61b35df80525676e626ff268cd6c23db64da7afc3b7c4998417cf9196`  
		Last Modified: Wed, 12 Aug 2026 20:49:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facac21512a243fb8cfe60c39951995c7609b26a22ebcca59904744522d19c0b`  
		Last Modified: Wed, 12 Aug 2026 20:49:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e15c3bc1b966fdd2d4258c07cf96a2ce7a539e4f7c79f26148d9f731ec9b40ff`  
		Last Modified: Wed, 12 Aug 2026 20:50:13 GMT  
		Size: 318.1 MB (318067484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eae95c720598dcc6e2b8597f7ba872a6b8b899774b72706e39d1a4fe5e99192`  
		Last Modified: Wed, 12 Aug 2026 20:49:34 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `julia:rc-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull julia@sha256:cc8c0a8b31172c142f4b08738d348d484fefc889168c1e969135ac99bdb271b6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2502042431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191f9ecaa4b9d9f99d93f62430a35b1f47c4ecac5124e5c2c798771821de7775`
-	Default Command: `["julia"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 21:27:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 21:27:43 GMT
ENV JULIA_VERSION=1.13.0-rc2
# Wed, 12 Aug 2026 21:27:44 GMT
ENV JULIA_URL=https://julialang-s3.julialang.org/bin/winnt/x64/1.13/julia-1.13.0-rc2-win64.exe
# Wed, 12 Aug 2026 21:27:46 GMT
ENV JULIA_SHA256=c2e39a69a17fb01ebf77997b64fcf93afbfb0fe2c62bd123a17934ac90990833
# Wed, 12 Aug 2026 21:31:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JULIA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JULIA_URL -OutFile 'julia.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:JULIA_SHA256); 	if ((Get-FileHash julia.exe -Algorithm sha256).Hash -ne $env:JULIA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process -Wait -NoNewWindow 		-FilePath '.\julia.exe' 		-ArgumentList @( 			'/SILENT', 			'/DIR=C:\julia' 		); 		Write-Host 'Removing ...'; 	Remove-Item julia.exe -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\julia\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("julia --version") ...'; 	julia --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 21:31:36 GMT
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
	-	`sha256:1df6b4b261c99d4aca4ca5b260a2a91945becfb5aaba0df1e79aae9062a4985e`  
		Last Modified: Wed, 12 Aug 2026 21:31:55 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a353c03f6809a0ee982a81c42fce69b4573174e12e6f22951154b61da37ed05e`  
		Last Modified: Wed, 12 Aug 2026 21:31:53 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0498e8b8d858ef87539355e8db9147a936564b0fe7d71f313fdbbe2a41049d05`  
		Last Modified: Wed, 12 Aug 2026 21:31:53 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b96b91e8e86f8f9482100b40f7ea8c3ff0387dd325d9261b3dd56ca9bfd9c51`  
		Last Modified: Wed, 12 Aug 2026 21:31:53 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594b33263da8cd6b06fbc7eab4535218bcf217c7830ef06e9696c5c02e13a3ed`  
		Last Modified: Wed, 12 Aug 2026 21:32:38 GMT  
		Size: 318.0 MB (318038434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e3cb53cdc8998076ec8964eaa91d97af301094d20faa7717b696cefd4e4ef`  
		Last Modified: Wed, 12 Aug 2026 21:31:53 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
