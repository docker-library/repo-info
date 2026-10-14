## `hylang:1-pypy3.12-windowsservercore`

```console
$ docker pull hylang@sha256:cbd8cf387ebb90ee7746317cb34a199ce7e4b8784c940f09831ccb8dded52196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `hylang:1-pypy3.12-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:328d000aba6e32adbedcab2dee7dce9f3248c342da208a61a59c18a9c7656c6f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2442042067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aed524fbf7e957f75e89f4a625e4d4117ef68723a216dd9b68961e8a059330e`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:13:04 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:13 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:14 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 13 Oct 2026 23:13:45 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:13:46 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 00:20:52 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 00:20:53 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 00:21:39 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 00:21:40 GMT
CMD ["hy"]
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
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c6d600ab908ea14a7770575edc207dbd629805ae3b5f755e5b19eeaf65e301`  
		Last Modified: Tue, 13 Oct 2026 23:13:51 GMT  
		Size: 353.2 KB (353157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f671fe5ddb3a7e253d1d13d0399e34049e93f58f41cbdfb8e241e8a32ae9515`  
		Last Modified: Tue, 13 Oct 2026 23:13:53 GMT  
		Size: 15.5 MB (15532847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659b795c168d342892537a2224ceed0cae32f944d3a2a16cc70375241832d118`  
		Last Modified: Tue, 13 Oct 2026 23:13:51 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e5df5d8f8113497b47d63292ef2d815cba7f85be7da1137b54195fa1ab87f6`  
		Last Modified: Tue, 13 Oct 2026 23:13:55 GMT  
		Size: 27.6 MB (27641954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9a05dca5079f58f346f71e8d11db6fde83cd2f7ff2444e5402ae4962dd795d`  
		Last Modified: Tue, 13 Oct 2026 23:13:51 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5570049509a860313dac5a0b4b2c6e08ac49b8d0fc81c11cee9fa74089d75642`  
		Last Modified: Wed, 14 Oct 2026 00:21:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9f10aa6d8b1a7ccc16b9a77e4b345245d736ed2b060063e2abe646baaf6ea0`  
		Last Modified: Wed, 14 Oct 2026 00:21:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97421bd04f310eb61e0d49dc8b3b9e12198c09139a24b09e7d15c3ddcfba715`  
		Last Modified: Wed, 14 Oct 2026 00:21:45 GMT  
		Size: 6.5 MB (6512116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525bc71d3fd636e2e52b37156f7727ee6b9eee949963c9dea9d79b12989a2440`  
		Last Modified: Wed, 14 Oct 2026 00:21:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-pypy3.12-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:949a6ff4ac5dd87b75c7ebd41c399f88dc250425c81ae5d994d7c518e726f682
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276280994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0794784efaf3e724c3d8bd92b09a4af6a4dadc0a596909d4d8109d8b266af239`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:00:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:15:07 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:21 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:22 GMT
ENV PYPY_VERSION=8.0.0
# Tue, 13 Oct 2026 23:15:53 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.0-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '0ccfe530cf22330bd225c561bb41b6200a759d96a15847c541d4b98859adaf3f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.0-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 13 Oct 2026 23:15:54 GMT
CMD ["pypy"]
# Wed, 14 Oct 2026 00:30:22 GMT
ENV HY_VERSION=1.3.1
# Wed, 14 Oct 2026 00:30:22 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 14 Oct 2026 00:30:58 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 14 Oct 2026 00:30:59 GMT
CMD ["hy"]
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
	-	`sha256:1bdfa17b4044e1440a5a0438b3f018d63e2b4fd2279d784da459aecfcc7fa880`  
		Last Modified: Tue, 13 Oct 2026 23:02:09 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521d2790d805887fdd377437a2d5a271c064b6e95d1e1cf5abb948f4997a1ce8`  
		Last Modified: Tue, 13 Oct 2026 23:15:58 GMT  
		Size: 338.2 KB (338171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa47d0910ebd318a33f1d9c2f6ba0476626816b0a69541de7248fd1c98e76f24`  
		Last Modified: Tue, 13 Oct 2026 23:16:01 GMT  
		Size: 15.5 MB (15516687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9787709c7b01e9055a9bcdb4f2ac19e5c503d73775dc8d9a8b4d6550cdb0d45f`  
		Last Modified: Tue, 13 Oct 2026 23:15:58 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7e9d674130ce03f1c6a107fc29a209ba627d1a85626cb9691d0c69ac0bae22f`  
		Last Modified: Tue, 13 Oct 2026 23:16:02 GMT  
		Size: 27.6 MB (27636830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96022e5e791eb06e7d9daf7c18f88eb0cb81fa3dc6c140514c61aef3fac285f6`  
		Last Modified: Tue, 13 Oct 2026 23:15:58 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94370d04debc1bd379df945e97a4a45eb0875c87b86b59559cbd0e42df311377`  
		Last Modified: Wed, 14 Oct 2026 00:31:03 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b5103cb91fb36b509c8e78d40718b9e0f63f095b686fb1b83fdeb44636a8a1`  
		Last Modified: Wed, 14 Oct 2026 00:31:03 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40c29b7a1413f471523267701832b6060d9680b80a8e7b174f632e41f73ebfe`  
		Last Modified: Wed, 14 Oct 2026 00:31:04 GMT  
		Size: 6.5 MB (6495950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acc803785be122c8948d3dfa7d9f0022aa8157d62aff07a69d2f7fc1af21d20`  
		Last Modified: Wed, 14 Oct 2026 00:31:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
