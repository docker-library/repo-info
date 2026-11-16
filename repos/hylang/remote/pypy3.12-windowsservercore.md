## `hylang:pypy3.12-windowsservercore`

```console
$ docker pull hylang@sha256:1a5df0472ed23cd77181401b1a5775db041f3d3dd4d57674439ca34943479b15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `hylang:pypy3.12-windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull hylang@sha256:43f720d406dbbd778083617e8e24744545496190a5d9250f0800db958dd2bad9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2459858651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90fca34b0d1d9930ae2b1ef6a7b3cc972dd1fd4b1de99aef1ab3008541f11ed2`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:07:07 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:17 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:17 GMT
ENV PYPY_VERSION=8.0.1
# Mon, 16 Nov 2026 20:07:48 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:49 GMT
CMD ["pypy"]
# Mon, 16 Nov 2026 20:46:16 GMT
ENV HY_VERSION=1.3.1
# Mon, 16 Nov 2026 20:46:17 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 16 Nov 2026 20:47:09 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 16 Nov 2026 20:47:09 GMT
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
	-	`sha256:258b8ca421c56b5c9c99b175da794c28dc2695af7af6c8065e63deab793a98d2`  
		Last Modified: Mon, 16 Nov 2026 19:54:22 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48030efc14d10fae225b9b4cb942a8c8a35646447ceae9782a51dbda97b6d020`  
		Last Modified: Mon, 16 Nov 2026 20:07:54 GMT  
		Size: 349.1 KB (349082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa9140082e14343115f94646930f9a785a02599d99e2b57320a263a7e4ad83d`  
		Last Modified: Mon, 16 Nov 2026 20:07:59 GMT  
		Size: 15.5 MB (15525629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923287d2ee8fa8fdb826fa556324478a681ea9be0a8044bd22e536f4177de04b`  
		Last Modified: Mon, 16 Nov 2026 20:07:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fd1a0375b8a2697ef76646eb53eddb2be3bd034b2d829d8200d10285cdf4fe`  
		Last Modified: Mon, 16 Nov 2026 20:07:58 GMT  
		Size: 30.3 MB (30328668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9e25b94802c3b08ea2384419f21c748f83b1a8ba2faf94fb3c460bc38a594b`  
		Last Modified: Mon, 16 Nov 2026 20:07:53 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8891bbc95c5ced98ef418870707e200d854c139f11eb26ff9a511c26ef34ab`  
		Last Modified: Mon, 16 Nov 2026 20:47:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2275de507061706948cbdab1d605d25baa90f60559e91d06ae724832c346bbbb`  
		Last Modified: Mon, 16 Nov 2026 20:47:14 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff939bbfb246d4772ee13470d733932c84d1e510914237b39c4f209d228c8ce6`  
		Last Modified: Mon, 16 Nov 2026 20:47:14 GMT  
		Size: 6.6 MB (6579843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ed6f66fe9b4420c48a974f09973bd6baa76bff67c928d54793848f14038077`  
		Last Modified: Mon, 16 Nov 2026 20:47:14 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:pypy3.12-windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull hylang@sha256:83c54860520955a83a0403d81ad32eac91ad23f20f02b4afb430371e537640c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2298842730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f79756df8e1a9184138a489352b69065cd7f5e2af9f4f72abe412ec63879c8`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:09:23 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:09:33 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:09:34 GMT
ENV PYPY_VERSION=8.0.1
# Mon, 16 Nov 2026 20:10:05 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:10:07 GMT
CMD ["pypy"]
# Mon, 16 Nov 2026 20:37:01 GMT
ENV HY_VERSION=1.3.1
# Mon, 16 Nov 2026 20:37:02 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 16 Nov 2026 20:37:37 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 16 Nov 2026 20:37:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514cbd3dfae445158cf4fa5649b0749cf2aab51510ffee9cbb4a56b3d3adc7d4`  
		Last Modified: Fri, 13 Nov 2026 18:51:30 GMT  
		Size: 757.1 MB (757071602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bdc4b4629459846fc9c6d7b2672783825a6e836f828d40126be8bc3e0d85ac`  
		Last Modified: Mon, 16 Nov 2026 19:55:05 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0745cbbade721b83a8fc8ff1825adac0299a0a95e6d4f089188478a4cbea5`  
		Last Modified: Mon, 16 Nov 2026 20:10:12 GMT  
		Size: 340.2 KB (340242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97933ddd82174143b20df4d5859b259fb641d59ec22ad8ef27d2f96a6860520f`  
		Last Modified: Mon, 16 Nov 2026 20:10:17 GMT  
		Size: 15.5 MB (15516820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ad7f5bab69b27b827fd85eecfb620600660f1af6b01cb4dc8f09cfd0df81c`  
		Last Modified: Mon, 16 Nov 2026 20:10:12 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ac99a4172c6866bbfca449ed90fdc402c193385c8944f34a8481284038e553`  
		Last Modified: Mon, 16 Nov 2026 20:10:16 GMT  
		Size: 30.3 MB (30316102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b024a67a7dc52a63bdc633d990ab90a49ef33e72acbeacfeda0f7c94fcd7494`  
		Last Modified: Mon, 16 Nov 2026 20:10:11 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031bd32d82d8e180bd292b7d801ded8249ce7a6643415cf05f35997a06a72ad0`  
		Last Modified: Mon, 16 Nov 2026 20:37:42 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea76e9fe4891fd0cbd4235c7633dcc7e4e79630370da668d30d4e7b24fd34d5`  
		Last Modified: Mon, 16 Nov 2026 20:37:42 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8b1d6804b0dbdcf4e15a50d0ddbfa42c18fbcb1e8f34289fa3e5f446a3e98e`  
		Last Modified: Mon, 16 Nov 2026 20:37:43 GMT  
		Size: 6.6 MB (6571028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7685f13038b9fcb58e9654a54d654c20eadfb93a9f005a5c4e39e7222b653e96`  
		Last Modified: Mon, 16 Nov 2026 20:37:42 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
