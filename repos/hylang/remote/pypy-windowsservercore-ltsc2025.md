## `hylang:pypy-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:b6bb1a4b86c44e7d549b36d07933bb2951419d54343a23eaba505c093d7ba91c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `hylang:pypy-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

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
