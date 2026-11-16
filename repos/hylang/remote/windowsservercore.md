## `hylang:windowsservercore`

```console
$ docker pull hylang@sha256:ad0523c33323a3987cdefbd454e5b09057ea78ee04fcd8adfbf0789a076cea14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33828; amd64
	-	windows version 10.0.20348.5873; amd64

### `hylang:windowsservercore` - windows version 10.0.26100.33828; amd64

```console
$ docker pull hylang@sha256:f8c100358e6f7ccd1f359134f14954d2e5e1c52b87aea4c3024270d0c90e6e4f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2487550836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187ea391e9d44994914ebfe7b4e7b7986948858c2c725a39616759095fe267aa`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:53:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:07:15 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 16 Nov 2026 20:07:15 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 16 Nov 2026 20:07:16 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Mon, 16 Nov 2026 20:07:47 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:07:48 GMT
CMD ["python"]
# Mon, 16 Nov 2026 20:46:09 GMT
ENV HY_VERSION=1.3.1
# Mon, 16 Nov 2026 20:46:10 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 16 Nov 2026 20:46:49 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 16 Nov 2026 20:46:50 GMT
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
	-	`sha256:e776cf3634157b0b226086033d3c45b74007823330a75f232a4be3bccff8c8b0`  
		Last Modified: Mon, 16 Nov 2026 19:55:28 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904b842a7ca456ffbe4eb8793492b0bb8a30b91dcb3b84788064177aefba244d`  
		Last Modified: Mon, 16 Nov 2026 20:07:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dea992c0f0e00690302a3511e332d779232e77fd3335206b0eb4823491998f8`  
		Last Modified: Mon, 16 Nov 2026 20:07:52 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4187f4032b5eb6d04884118fe46ffaa43232f23ba0a31ed0d5ef5f37b2674906`  
		Last Modified: Mon, 16 Nov 2026 20:07:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875d08d2bb3e045dfa1abbfe3b424826be74b3ae18423470c411823e77ff10f9`  
		Last Modified: Mon, 16 Nov 2026 20:07:58 GMT  
		Size: 72.2 MB (72243422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afac76a33589140bc18e05944d37829feb44399b37d1e485050fb1b72928dae`  
		Last Modified: Mon, 16 Nov 2026 20:07:52 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cbc0747dcf14ea6865319417c3d2ca026f0dba1adec8fa455d56b974b1234e`  
		Last Modified: Mon, 16 Nov 2026 20:46:54 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b94a3b9109f334e6ce48ec197bd0fce65a8c9834d1513ee09d7a917fd82ebb1`  
		Last Modified: Mon, 16 Nov 2026 20:46:54 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207de2136f918a46610c0b7786a54fce71789d31717ecb054564ac47ee13a336`  
		Last Modified: Mon, 16 Nov 2026 20:46:56 GMT  
		Size: 8.2 MB (8229456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f683e769157359b770a09d2269b1ec6439aeb5729d3fa104afc64e10a210f8b`  
		Last Modified: Mon, 16 Nov 2026 20:46:54 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:windowsservercore` - windows version 10.0.20348.5873; amd64

```console
$ docker pull hylang@sha256:ab3f611f93c0a4c94b8774964990b22fe1c8c8f1c9c3d06bccd7aa03c887d54d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2326267040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0d35679e465ce2d4b09c2f67453452fe5cb526fa9191032d25985a71b3093d`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Thu, 12 Nov 2026 02:40:01 GMT
RUN Install update 10.0.20348.5873
# Mon, 16 Nov 2026 19:53:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:10:44 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 16 Nov 2026 20:10:45 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 16 Nov 2026 20:10:46 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Mon, 16 Nov 2026 20:11:20 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:11:22 GMT
CMD ["python"]
# Mon, 16 Nov 2026 21:09:14 GMT
ENV HY_VERSION=1.3.1
# Mon, 16 Nov 2026 21:09:15 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 16 Nov 2026 21:09:50 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 16 Nov 2026 21:09:50 GMT
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
	-	`sha256:a50c1dccbe5282232edadf093d248fbd1ad3afca121684f6db1333d7d64004eb`  
		Last Modified: Mon, 16 Nov 2026 19:54:52 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615e7b5a3e39cfe9b372a811c3385f8576152f01198ee3386c0e15c22774fcb9`  
		Last Modified: Mon, 16 Nov 2026 20:11:26 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fceec1d0e0ccaa931e07c55bb97707199df3f616af2d52ff1ab39fa4cc2d4ce1`  
		Last Modified: Mon, 16 Nov 2026 20:11:26 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0033cacbefe8c6a6fe246491b9826d626b08dfd2fbef1fa4f9e201b943d532e`  
		Last Modified: Mon, 16 Nov 2026 20:11:26 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:392b12c7b4ce4d519420b5d5ccfcd03e92148c4778888cdc4c11cf747895eb59`  
		Last Modified: Mon, 16 Nov 2026 20:11:32 GMT  
		Size: 72.1 MB (72089410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f6a6cd35fa3a24c412be9ef921fbb0073c66c1ae4e5edc44a217df0a495cd6`  
		Last Modified: Mon, 16 Nov 2026 20:11:26 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd0c13b71ca2d5dad4c447f58397de1687c2dd1f49aefb2e127ce3a099b949b`  
		Last Modified: Mon, 16 Nov 2026 21:09:55 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ae150ff4fcca1e0c8f97e3d5ee74a96fd7e6ce28c7597a9108e2135b2403ed`  
		Last Modified: Mon, 16 Nov 2026 21:09:55 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec155c4badd27c3975fe5935026428394a69a8a516988c7b55d6e646b7b98038`  
		Last Modified: Mon, 16 Nov 2026 21:09:56 GMT  
		Size: 8.1 MB (8076386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd3291224cace83e4c7896759b85b70df028308b5ac99766fd3b27e69da7d5`  
		Last Modified: Mon, 16 Nov 2026 21:09:54 GMT  
		Size: 1.3 KB (1339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
