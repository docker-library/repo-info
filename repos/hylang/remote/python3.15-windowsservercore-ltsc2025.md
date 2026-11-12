## `hylang:python3.15-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:779cd308f3904f8750d714d89d762655f589d176104e2ae22290149f714d415b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33822; amd64

### `hylang:python3.15-windowsservercore-ltsc2025` - windows version 10.0.26100.33822; amd64

```console
$ docker pull hylang@sha256:b5decfa7379d7f4a8d6dabe4f921cfba45a8311bf953026ff9104bb8c6fbaa8d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2487933432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c47b64f6bbe2fafbc15affcbe80a4ae819a2fed2085e19ffdda7dbc973375e`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:53:07 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:01:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 11 Nov 2026 22:01:59 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 11 Nov 2026 22:01:59 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Wed, 11 Nov 2026 22:02:33 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 11 Nov 2026 22:02:34 GMT
CMD ["python"]
# Wed, 11 Nov 2026 22:48:36 GMT
ENV HY_VERSION=1.3.1
# Wed, 11 Nov 2026 22:48:36 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 11 Nov 2026 22:49:22 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 11 Nov 2026 22:49:23 GMT
CMD ["hy"]
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
	-	`sha256:0424bf2a0ebe4e53eccb510a3df92bce08e3e2450a783d85a1af6c24c50cf491`  
		Last Modified: Wed, 11 Nov 2026 21:54:26 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceadb77398c07baef516d5808cd910aa24fb160bc808654b2a906623b282449d`  
		Last Modified: Wed, 11 Nov 2026 22:02:38 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5bf4a9f42daf3374000f98384f216a586808ee2d5d483477f46827f7d1a287`  
		Last Modified: Wed, 11 Nov 2026 22:02:38 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ed1316207e3e10219d0ebb5d86933f47a3e4da3e53788eed3363352b555aea`  
		Last Modified: Wed, 11 Nov 2026 22:02:38 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a11ce1a1031fbe17b96f15e6fdbd5646b2f40beb400a6eb4b24f4f32206c963`  
		Last Modified: Wed, 11 Nov 2026 22:02:44 GMT  
		Size: 72.3 MB (72301415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6aead300a12cd4c3b6f1034620e75c4f13ff4546bcdec07c861cbd5f611ba1`  
		Last Modified: Wed, 11 Nov 2026 22:02:38 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3ff4f6134498a8695622aab6810bacb141456a960254232bc3deb4809e03a6`  
		Last Modified: Wed, 11 Nov 2026 22:49:27 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e854478bef9c768bf33e6f9991869a38a6f9f7946aab16128f9085cd9662e838`  
		Last Modified: Wed, 11 Nov 2026 22:49:27 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35405839e9a7fbf716326d89553631d2af549015e4ad57d1c51fd82b522745c`  
		Last Modified: Wed, 11 Nov 2026 22:49:28 GMT  
		Size: 8.3 MB (8290908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323bf8a7120a7b5f1a84d5a467fab1f8483b7ec8eec1c2b7c5d50f6409e4c579`  
		Last Modified: Wed, 11 Nov 2026 22:49:27 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
