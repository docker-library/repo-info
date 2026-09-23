## `hylang:1-pypy3.12-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:3ee922b10987182e75fb44e6aff90a7453509d5d88a429a991682c6bb782de2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `hylang:1-pypy3.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:a89492151d6874ef1ecfac1fe1b5649eb602775b28677311e2a2a836dbed9874
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2269440612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d9fb88d6ebc7fa0abb277097ee7a909a60a19bf7e4d1c2e23ab81362eae6e7`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Mon, 21 Sep 2026 23:08:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 21 Sep 2026 23:10:09 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:10:47 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:10:48 GMT
ENV PYPY_VERSION=8.0.0
# Mon, 21 Sep 2026 23:11:39 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 21 Sep 2026 23:11:40 GMT
CMD ["pypy"]
# Wed, 23 Sep 2026 00:16:05 GMT
ENV HY_VERSION=1.3.1
# Wed, 23 Sep 2026 00:16:09 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 23 Sep 2026 00:18:27 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 23 Sep 2026 00:18:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47afe180dbd93a1801ebb214117f4505e152de871cda8696e4fb1dee46aa5db1`  
		Last Modified: Mon, 21 Sep 2026 23:11:49 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac8e017d7c706ee39fc7ed5072af6dec8a2f0b6988afea5b8e0e5dd8da843e0`  
		Last Modified: Mon, 21 Sep 2026 23:11:48 GMT  
		Size: 361.6 KB (361550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2720361629f16aca3b2dd8bf271ba974d859cb5c51cab375c76e4ff9b075c4b9`  
		Last Modified: Mon, 21 Sep 2026 23:11:52 GMT  
		Size: 15.5 MB (15499207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4c0248ee1766290b09cc04ca203f404681265d2f9ba5f38f3c4b6549ac883`  
		Last Modified: Mon, 21 Sep 2026 23:11:47 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9a04a0a1ca0c4c192edf3404ce8003bcea00d9fd50a76e5d61a298063b8d5e`  
		Last Modified: Mon, 21 Sep 2026 23:11:51 GMT  
		Size: 27.6 MB (27607272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b88db62a80e77f2f82c40e3326aa6c0b0c2985fb187e527aa032d954f95950`  
		Last Modified: Mon, 21 Sep 2026 23:11:47 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9134664b9a669ad6569d55689447884315288c7074df0bd696336a671bfb21`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab980850d724e434ed660e74bb645aacaf95d3846ab9ef86c8fd27e2a99c5ed`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b36c3f8123cbe0fb95588b58f62c9aa8f52ee7504f4012820ac3473dd7eb53a2`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 6.5 MB (6476015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d3e1f398193e0e0de9b88bfb70e44cf58a205e3775a68bfdf11e1bf67af634`  
		Last Modified: Wed, 23 Sep 2026 00:18:34 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
