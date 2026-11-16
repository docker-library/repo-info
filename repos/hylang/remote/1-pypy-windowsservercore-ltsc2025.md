## `hylang:1-pypy-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:263e391d9e8e1d21906a2d3de8110419d111275606b6e7dafd1df492f0981292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `hylang:1-pypy-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull hylang@sha256:6e5253b75fd935bfc83a21af8c417c09f114c29f4b378ade3ed980c6a36c6719
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2463920684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0702243d5e3a8a8b063f1992b7bc5ac24d9e95b020623ba7f0c78380119a1658`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:07:10 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:18 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:19 GMT
ENV PYPY_VERSION=8.0.1
# Mon, 16 Nov 2026 20:07:55 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = 'cba5f9e9543c679ea5d31b6c81b7a6667d836e3c18bf3eb6cb8c72147f829896'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:56 GMT
CMD ["pypy"]
# Mon, 16 Nov 2026 20:46:24 GMT
ENV HY_VERSION=1.3.1
# Mon, 16 Nov 2026 20:46:24 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 16 Nov 2026 20:47:19 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 16 Nov 2026 20:47:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9defc15cca887258ad49b1f75aa00c54b7a6a070717bc0cd09bcae97046b4b3c`  
		Last Modified: Fri, 13 Nov 2026 18:53:03 GMT  
		Size: 884.0 MB (884008369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a24e968073693c0d1ed9c45c4556a135eba4f87ff4c51c418006c014c4b34e7`  
		Last Modified: Mon, 16 Nov 2026 19:54:26 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb2ec6738af6997a76a2c90e92f41e4ca0d39637ef7ee0fc54cbe7d3f6d5b76`  
		Last Modified: Mon, 16 Nov 2026 20:08:01 GMT  
		Size: 342.4 KB (342399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7108db0be1d8c0192023fe7bf47b47e3e32de42eb95633ea2ad86be5e195acb5`  
		Last Modified: Mon, 16 Nov 2026 20:08:07 GMT  
		Size: 15.5 MB (15523354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b893dabc1652a1aef326f625d82a406e156a24302f2c23193c422c895d1374`  
		Last Modified: Mon, 16 Nov 2026 20:08:01 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed825f3d69b8bd3361d1534e234c9c339b9bfa270e19f7c16ee7d931c7a5f00`  
		Last Modified: Mon, 16 Nov 2026 20:08:06 GMT  
		Size: 32.9 MB (32949350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a4d069231a92bfe0f9059ff0dbed82786eb67af9dc8e69224a8c37770bdf28`  
		Last Modified: Mon, 16 Nov 2026 20:08:01 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e5de7e78b81c929e51297823f7d6e3d573613a7b3f95246d151e0464ffeb69`  
		Last Modified: Mon, 16 Nov 2026 20:47:24 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f276d96c4d2883e4e3df43779ed2ae44a147e71fcccdb90f1c6abd4e2c0d40`  
		Last Modified: Mon, 16 Nov 2026 20:47:25 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c1b4a8f06a568684b2d3cdf1f784b156c54bfe169b0e7d13ec9bf1b1c09e7`  
		Last Modified: Mon, 16 Nov 2026 20:47:25 GMT  
		Size: 8.0 MB (8030159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3125dd3d1a32d5bb617c272fd350768a1c0b427feb9f7618d5237058967ab736`  
		Last Modified: Mon, 16 Nov 2026 20:47:24 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
