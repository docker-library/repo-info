## `python:windowsservercore-ltsc2025`

```console
$ docker pull python@sha256:800f9b580d8a7c385686b6a4bbd8c35c8dd9a63c143478c2c85afaa97752b710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `python:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull python@sha256:b87db87b0106096b4d86806fd333d11b300463e0e7fa3614e7fa0237450be18c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2526983573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74619c3bc174aec4057e1061d88ef82a5fbfc22d6ad97c97e71c935d76a5d583`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:48:19 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:48:19 GMT
ENV PYTHON_VERSION=3.14.7
# Wed, 09 Sep 2026 22:48:20 GMT
ENV PYTHON_SHA256=9d9eb2709ef81bf5cd30db3c2096bdbc4ea10087c22e62f27d356b36f6ae9649
# Wed, 09 Sep 2026 22:48:54 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:54 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec4613b35965b0a5e5e44c71f049ea846ddeabf6da705d07928af78a7a23b59`  
		Last Modified: Wed, 09 Sep 2026 22:33:50 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b962de7822dc6110b249d5713449d049cc9b5e75d170662dd9c3d778e1f6694c`  
		Last Modified: Wed, 09 Sep 2026 22:48:59 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479c94daac1069475fd329675ff71d1f5d269a6234e5cb0016658fc19acfba8a`  
		Last Modified: Wed, 09 Sep 2026 22:48:59 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dfd30ece897534eb55843e0e5ba579ffe2af4488c9c1f5415da07af2870366a`  
		Last Modified: Wed, 09 Sep 2026 22:48:59 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf4395f1c4ac02d367c0971f7c37b179ac584d5907b03d450830839390fc48`  
		Last Modified: Wed, 09 Sep 2026 22:49:04 GMT  
		Size: 69.3 MB (69347499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a934722dac4d52b39ec6d5ed91930ee452f8aed4fb3a5a1a8b10bdad4d392f`  
		Last Modified: Wed, 09 Sep 2026 22:48:59 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
