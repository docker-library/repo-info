## `hylang:pypy3.11-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:aa7b9a4c44db34cf6f0ea7749a8b11462bf0d8fcb27c6d60e61c7b1e1dcbf4f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `hylang:pypy3.11-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hylang@sha256:da9c10d149ff7cf90a9dee4a453be6d2fce98ab7541587656c9248d36ef59029
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2238678832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a94232f353ea462443aee332373f1f4a1d6e24c0e034179bb77272dab1726f`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:50:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:51:39 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:52:08 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:52:09 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 12 Aug 2026 17:53:04 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:53:05 GMT
CMD ["pypy"]
# Wed, 12 Aug 2026 18:19:48 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:19:49 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:20:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:20:36 GMT
CMD ["hy"]
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
	-	`sha256:22e05ffa1d42945055559d13c674b9b9745fe283b847111a7d27cac84f7749db`  
		Last Modified: Wed, 12 Aug 2026 17:53:15 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72de9b8f0a00a8ae6508c717c55469d1ae9f75880dc77b251fdef0ab1569798c`  
		Last Modified: Wed, 12 Aug 2026 17:53:14 GMT  
		Size: 346.3 KB (346260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc827d6488b26caa70abfeeea5245eb7eb61d79fde1cee5966237474d908130d`  
		Last Modified: Wed, 12 Aug 2026 17:53:18 GMT  
		Size: 15.5 MB (15522047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5bdef20750db5b762563a97dde7880beb4ecbb84c999c29f52f006eabb6db2`  
		Last Modified: Wed, 12 Aug 2026 17:53:14 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca8e4d1506219879efc98da78ad3f2f1d23bb4300b30d43294cf97bab1b9269`  
		Last Modified: Wed, 12 Aug 2026 17:53:18 GMT  
		Size: 30.9 MB (30862360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae5789f49ac76d37572ce31bb4bdbd5cd59bbccd6af595be80a6ec8b8058c69`  
		Last Modified: Wed, 12 Aug 2026 17:53:14 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668196406cb0567814176cef7d71c027688f26009f026a28fa63e52b6cb1e70f`  
		Last Modified: Wed, 12 Aug 2026 18:20:40 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f40c2aa4278f61589e97adeaa57a755a8655c06763bf61275288b863607ec2`  
		Last Modified: Wed, 12 Aug 2026 18:20:40 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde9b9490dd08bc60d43c1409511bcbcfec1f010d73df342043ec14386ac3afb`  
		Last Modified: Wed, 12 Aug 2026 18:20:41 GMT  
		Size: 7.9 MB (7942911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe17feb800b4eacde50b8fc992f58baf5a6ea95f6b6337880cf39d1e24ea138`  
		Last Modified: Wed, 12 Aug 2026 18:20:40 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
