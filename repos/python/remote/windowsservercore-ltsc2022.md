## `python:windowsservercore-ltsc2022`

```console
$ docker pull python@sha256:5a2b988dde4c995a38d2124e593a80ee49a2870e8ef9b2638c3d58e7d3cf9a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5873; amd64

### `python:windowsservercore-ltsc2022` - windows version 10.0.20348.5873; amd64

```console
$ docker pull python@sha256:b0ca8b3a1f4e90accec14e9d485a625746ee487753cd93c1da72af3f312fae77
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2318186699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f0fdb1d587066fff1217fc12314fa226825ce369dad6c1369b3b046fa45629`
-	Default Command: `["python"]`
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
