## `hylang:python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:7880a7e8403b32a80b7bccd641e75623365753a4a3ad2ce352149d17b7a9de66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hylang:python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:7f677510990be7df4872096616943ada8bc436126a44f0829e2759396ff21120
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2432828804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221b805989fd3af22dfc8556202702861c469f4a0fc5d311bfb3afca29008877`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 05 Aug 2026 16:15:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 05 Aug 2026 16:15:51 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Aug 2026 16:15:51 GMT
ENV PYTHON_VERSION=3.14.7
# Wed, 05 Aug 2026 16:15:52 GMT
ENV PYTHON_SHA256=9d9eb2709ef81bf5cd30db3c2096bdbc4ea10087c22e62f27d356b36f6ae9649
# Wed, 05 Aug 2026 16:17:01 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 05 Aug 2026 16:17:02 GMT
CMD ["python"]
# Wed, 05 Aug 2026 17:24:50 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 17:24:50 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 17:25:17 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 17:25:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4640bcff2398fc7ddb529e10460e958308ca793aa93f6a73a52e2b840d3519`  
		Last Modified: Wed, 05 Aug 2026 16:17:08 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cfd36f093c0dfa95fd427850331107b3fe74c3eccef0445d750a543622fbbb`  
		Last Modified: Wed, 05 Aug 2026 16:17:07 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c460ddc0ed4e954a123e5ea76c6b6812b95ed2a027f08765a476da0973bd8b`  
		Last Modified: Wed, 05 Aug 2026 16:17:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4910c96f972d5ac0bcb1ab861e9a644c607b0d648e1bdb6fe8cdee0fb9bebc2f`  
		Last Modified: Wed, 05 Aug 2026 16:17:07 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d256bad68934d4515bef5cdf7d5f68a1774f80cb67b16eb5db71b6f496a8f18d`  
		Last Modified: Wed, 05 Aug 2026 16:17:12 GMT  
		Size: 69.3 MB (69292787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edbf4367615181907935964ac000027762848f8bc5586853e739c05ab8afceb`  
		Last Modified: Wed, 05 Aug 2026 16:17:07 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31560ea32b1a5c8e40a586e8d67f8bebabfceb97fe467bad963e9e3f48204dd`  
		Last Modified: Wed, 05 Aug 2026 17:25:21 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6cbcb57834808512a89a51c795aac5e31720b287697996ef6c7b63c04b85eb`  
		Last Modified: Wed, 05 Aug 2026 17:25:21 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee14b8cd3bb3d6e6cb18f3d75b7f5ab4a5787608ed201507d1563c894367c088`  
		Last Modified: Wed, 05 Aug 2026 17:25:23 GMT  
		Size: 8.5 MB (8517467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a9e4183348ca8230b7696412071352189d804621fdbab343575741e8b165`  
		Last Modified: Wed, 05 Aug 2026 17:25:21 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
