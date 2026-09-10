## `hylang:python3.14-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:79fbbe27e11b8e28b02e0b55f2e35a3a613681b0cc90aaa411402ec4ccdface4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `hylang:python3.14-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:2515f4fdda9a783444f7eb07530002bf38a622aed410d8512b3ea29f5e95aeff
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2535419097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1871ef4fa838c9e64197914f9d04e8e7a09ca5b6f366656489c28399e5be532`
-	Default Command: `["hy"]`
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
# Wed, 09 Sep 2026 23:44:07 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:44:08 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:44:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:44:35 GMT
CMD ["hy"]
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
	-	`sha256:e4df29f3ece41b79127927af11669bfeb3606b000fbd11d9689bc49c8939733c`  
		Last Modified: Wed, 09 Sep 2026 23:44:39 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80c87f1a3ff9c30a44b2d235158d10a40b31ce762a6db80a6c4cfa8651cba74`  
		Last Modified: Wed, 09 Sep 2026 23:44:40 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05d9010e5c9d4323a21802ae8e81bb15fee54452da633c3a880848b0d717889`  
		Last Modified: Wed, 09 Sep 2026 23:44:41 GMT  
		Size: 8.4 MB (8431641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ae856ee3906abdd34958211b7b4cbb5b3869dc08a607dbb57985091c00180c`  
		Last Modified: Wed, 09 Sep 2026 23:44:39 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
