## `python:windowsservercore-ltsc2025`

```console
$ docker pull python@sha256:381e5a4b5025821e638917c7b19214a924dc36126b6942c8846907a277cbe2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `python:windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull python@sha256:33d26744fb5eb7ea1a873c976287e29c78676ccf002aaeb25315280526033fc2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2424307466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd028a528daeae43ed66bc96467d9ea09cc03b80538906292e18d5fb8012aa8`
-	Default Command: `["python"]`
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
