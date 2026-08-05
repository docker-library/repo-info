## `hylang:pypy-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:180c452e240f32b91e0c2ae7aeb9a15b38bf035055aac5e18d005de2d8c8dd1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hylang:pypy-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:385e4b309f60c10c327fc763c3d2a9a8d01bb3acd178089f6749a68b949ab709
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2409986754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5bfbcdd4508d9831af02564636355297ba0df002db43910e4c515c721d7c87e`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:37 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:15:13 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:15:26 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:15:27 GMT
ENV PYPY_VERSION=7.3.23
# Wed, 15 Jul 2026 23:16:15 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v7.3.23-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '948b8ea58dea5b9917210fe4afd242c788fbfaba1c3f1a25e696a404f703389a'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v7.3.23-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:16:16 GMT
CMD ["pypy"]
# Wed, 05 Aug 2026 16:00:45 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:45 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:01:36 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:01:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08040b6c2a47fa777abf8cdc803505a8f12162da0bf31c0316b04adea497771`  
		Last Modified: Wed, 15 Jul 2026 23:05:03 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d84599506f25f3a9efd5bd4e68198120e53097bc4c7cea39adb828291288b`  
		Last Modified: Wed, 15 Jul 2026 23:16:25 GMT  
		Size: 372.0 KB (372009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e612565134d2f7b4a3a47abe718a11c4301704f7d36da201f124e2f1f05ed62`  
		Last Modified: Wed, 15 Jul 2026 23:16:27 GMT  
		Size: 15.5 MB (15544786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db2db6b21203a5f663e7cf1f5e85df6cfc6b77f514f898aea4f76b3f952fc35`  
		Last Modified: Wed, 15 Jul 2026 23:16:24 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b4934b501fc35259c12c6a97a71025925fcbfaecaa7626d6cfa83f76dad50b`  
		Last Modified: Wed, 15 Jul 2026 23:16:29 GMT  
		Size: 30.9 MB (30881482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5694b657fdf9729b5f0bc9a089b749a5b53165d60b41d5c9f7e95ad9fc2b9f`  
		Last Modified: Wed, 15 Jul 2026 23:16:24 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70d72bfaa846dfad79c34199d29173d4258faeaa25db4a4d7b49aca4c613855a`  
		Last Modified: Wed, 05 Aug 2026 16:01:41 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3770696e1144c7ffb0c661aa437cd0fd41f057f59b94b1098ffeda8e145dc58a`  
		Last Modified: Wed, 05 Aug 2026 16:01:40 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42340d21724ecec3adc8ae7404d4a241275dca771ce22166bce647d91bf78eb2`  
		Last Modified: Wed, 05 Aug 2026 16:01:42 GMT  
		Size: 8.2 MB (8172580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4616a0813eedda421a0746c4848b95c641d5273c645c24a033bdf4e71ced322`  
		Last Modified: Wed, 05 Aug 2026 16:01:40 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
