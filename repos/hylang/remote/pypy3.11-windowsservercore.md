## `hylang:pypy3.11-windowsservercore`

```console
$ docker pull hylang@sha256:2ad975ec8ed019849b43134a0933b818f0658bca89a0d94af54eab94c7e0a52a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `hylang:pypy3.11-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull hylang@sha256:648c87225fd5fbe7501267f5784fca523f96972421a12491b145cb812b3c9d85
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2448918209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9300df7a1cfc54007a09af22ed5e4b185086b9658aed224d924d8a9d2d96e76e`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 17:49:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:00:39 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:47 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:00:48 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:01:24 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = 'cba5f9e9543c679ea5d31b6c81b7a6667d836e3c18bf3eb6cb8c72147f829896'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:01:25 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 18:42:14 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 18:42:15 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 18:42:58 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 18:42:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46e8d5f0312a2c4618bea01142915c3378df7d1b0e20efa9cbb88677853d9e0`  
		Last Modified: Tue, 27 Oct 2026 17:50:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a225da3fbb35898cfd041b9d9e1bbae6e991e47029d7fdea4d517b9163d11109`  
		Last Modified: Tue, 27 Oct 2026 18:01:29 GMT  
		Size: 347.3 KB (347318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d647f6a75efc116a9b859fa5fad3aa2c8daa73b20c4cd5f9d55e5c8deadc6728`  
		Last Modified: Tue, 27 Oct 2026 18:01:33 GMT  
		Size: 15.5 MB (15529406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d14c6a53face73f3cb2a19e73598342d60a6f4ab5d4e958936fcc81d08be903c`  
		Last Modified: Tue, 27 Oct 2026 18:01:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cdeaa705bed308532d8b8f12544837e0be9efcfe7e9a99c640eca447a03f55`  
		Last Modified: Tue, 27 Oct 2026 18:01:33 GMT  
		Size: 32.9 MB (32949978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ed7e01eacbda3a5ddb235268c7799633a484cd58046be8ce2042121912f321`  
		Last Modified: Tue, 27 Oct 2026 18:01:29 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4459634c6fe42a46d2343139cd5b8f899def44b226107d7535e4b901f0e957`  
		Last Modified: Tue, 27 Oct 2026 18:43:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b829a93d4dab58583d374960ccffdcf11e8911d5b00318a8c9d8a9743fd8420c`  
		Last Modified: Tue, 27 Oct 2026 18:43:03 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15bf6440beb3e07c6f18ade40283337cbb3654f92153f2504d4673b83460502`  
		Last Modified: Tue, 27 Oct 2026 18:43:05 GMT  
		Size: 8.0 MB (8034685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641afedb42042c48b49cf192252596471e4466df2f6c6dc5baac8b25b6e84d3d`  
		Last Modified: Tue, 27 Oct 2026 18:43:04 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy3.11-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hylang@sha256:15a6f1c2d83cfcd991476ce55a4360ea4a61b2d995cbdeabf8173b50a11c9985
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2283887927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05aec153c606e02ec9aa4cb292938c37272308d5f4f1698727dd20b9e0f12f7`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:09:52 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:10:03 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:10:03 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:10:38 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.11-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = 'cba5f9e9543c679ea5d31b6c81b7a6667d836e3c18bf3eb6cb8c72147f829896'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.11-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Installing "wheel" (backwards compat) ...'; 	pip install --disable-pip-version-check --no-cache-dir --no-compile 'wheel<0.46'; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:10:39 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 19:20:25 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:20:26 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:21:13 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 19:21:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181ee9f6ffd0723d844a7907cf31bb25142495506b6ec2308bfc26e848bbc440`  
		Last Modified: Tue, 27 Oct 2026 17:50:05 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d87dd52449011a38955217e05a45f40c7579669bde24c9aac15f33499db12`  
		Last Modified: Tue, 27 Oct 2026 18:10:44 GMT  
		Size: 344.3 KB (344267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20f62677c82815fa6236591e87fc263d66905872b9fa25c5bb685de7e0c56a8`  
		Last Modified: Tue, 27 Oct 2026 18:10:47 GMT  
		Size: 15.5 MB (15518859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c3a26e236ccf5e7f204e9b829df2bd2eedf4dd8a2e9602c98d41aef042b06f`  
		Last Modified: Tue, 27 Oct 2026 18:10:43 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305a4ff94bf9ff678f6cdc6b4b5c3ea28b11588cc6312d26ae438d9139ec3743`  
		Last Modified: Tue, 27 Oct 2026 18:10:48 GMT  
		Size: 32.9 MB (32940257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3c0b7c384ede7aa07a5bc445cf3455b00c9e0bb75942bac6c4243ab6dd1689`  
		Last Modified: Tue, 27 Oct 2026 18:10:43 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53890d21a275671e338c3ae0a142f83553ca1f44bda6fc167843fca83de1c27d`  
		Last Modified: Tue, 27 Oct 2026 19:21:18 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cb30e1b563f860abc2d9467da76d48d1481aa9437194d3fba6bfb70fc22205`  
		Last Modified: Tue, 27 Oct 2026 19:21:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeeac3572946d5d184038d016d99e4d9828eea90479cb1969f6d25adb0d15fd`  
		Last Modified: Tue, 27 Oct 2026 19:21:19 GMT  
		Size: 8.0 MB (8020550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e190b429805d402680d1ca914c7f4b765e656ce0ba2170c92b8691ea5e985b`  
		Last Modified: Tue, 27 Oct 2026 19:21:18 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
