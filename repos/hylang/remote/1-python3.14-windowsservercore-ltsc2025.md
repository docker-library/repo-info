## `hylang:1-python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:77494a4b71e06c7519c733a206fff651e2516bd103d4078a498a9e9340e34012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33828; amd64

### `hylang:1-python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33828; amd64

```console
$ docker pull hylang@sha256:da4de36edc23f77446fe74a89ea1c915b68718e188694c3ff1cb035f2a94eeb0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2484614776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb70078864628b959ed30d01d980c5e0de3052dba59193b9866734f568726ac5`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Wed, 11 Nov 2026 23:09:50 GMT
RUN Install update 10.0.26100.33828
# Mon, 16 Nov 2026 19:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 16 Nov 2026 20:07:04 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 16 Nov 2026 20:08:13 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 16 Nov 2026 20:08:13 GMT
ENV PYTHON_SHA256=92480239264744fe0386a1bd8275786fefa126e3129e56a68e22b52c73329965
# Mon, 16 Nov 2026 20:08:45 GMT
RUN $url = 'https://www.python.org/ftp/python/3.14.10/python-3.14.10-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 16 Nov 2026 20:08:46 GMT
CMD ["python"]
# Mon, 16 Nov 2026 20:46:14 GMT
ENV HY_VERSION=1.3.1
# Mon, 16 Nov 2026 20:46:14 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 16 Nov 2026 20:47:03 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 16 Nov 2026 20:47:04 GMT
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
	-	`sha256:461877c72c63214024e305a95a116295484c62d2c3d46a7707f665457f5fa160`  
		Last Modified: Mon, 16 Nov 2026 19:55:18 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2e35f0a9388a7d5aa85fdd77cbbd178ce8f503302581978c87726328adf741`  
		Last Modified: Mon, 16 Nov 2026 20:07:53 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b2feb289fb4a431923087d32005b7430e6705bb4e7ae1526a5e13c1953771c`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e65d9643c4512d045e2c8e1129ddd6ad3548cb099d3c243cf4e1a2ac49e60e`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61598d01ce949968b721c191bd396e9e39c3c9493ecfd97240f7ff6179fb06da`  
		Last Modified: Mon, 16 Nov 2026 20:08:55 GMT  
		Size: 69.2 MB (69243475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44ae1c87cb4746aaec990370c88c56c961cbdcf58499977512f24e1981fd33`  
		Last Modified: Mon, 16 Nov 2026 20:08:50 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e5e8dc5c6ad87f790d6df5884b2e8dee73eb7cbe5ade2643478164a3d719c4`  
		Last Modified: Mon, 16 Nov 2026 20:47:07 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be37d59e83e0392389c8c0d6ae8f05bedca536bd5cfdb9beff1a8aedf88f96d7`  
		Last Modified: Mon, 16 Nov 2026 20:47:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df427fbd30cd2d565847084a4f6df2622714cf2208dd05bfc837bdd245c1cd65`  
		Last Modified: Mon, 16 Nov 2026 20:47:09 GMT  
		Size: 8.3 MB (8293269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb002e36fac8f792a6c9e5917374541917483007acc5d3e1014fe11ae0fdd7f7`  
		Last Modified: Mon, 16 Nov 2026 20:47:07 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
