## `hylang:1-python3.15-rc-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:6ec206a8c8b4ecf6c9915ae74739bc319acb460a258f033cea3fae6778bc5b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `hylang:1-python3.15-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull hylang@sha256:5cadfce594b9629a4fc6abdc956fd33b35dcd30db0cc133c0d5c04ac65186712
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2538321230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6128b901a8433c897e922189e2e761c0dabc547321d68800c489c8878b5f43ff`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 09 Sep 2026 22:32:00 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:48:13 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:48:13 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Wed, 09 Sep 2026 22:48:14 GMT
ENV PYTHON_SHA256=a74bf15b3184ea885d39b4eb9b6fc4ac0a696d7bb605d879c024af4433fa72da
# Wed, 09 Sep 2026 22:48:47 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:48:48 GMT
CMD ["python"]
# Wed, 09 Sep 2026 23:26:03 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:26:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:26:52 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:26:53 GMT
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
	-	`sha256:e7b5a66eab7b5f15a463aff8ab14f48b32e2cc705064cf8d7586423813256d87`  
		Last Modified: Wed, 09 Sep 2026 22:34:24 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95effb38a1f5de33033f8723d87a179dbde5b76e63c5bb9734be59a7df2b9843`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf67fd16a0b68f94223cc4418ffafc39c873940d584a51e2c4b89a853db58bac`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437d562da5b66ba6c49925074982c5ac83b700d866db224272b67d42c2725579`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e828afc250885255efb5dfce277aee5f64c14d9a53e0f9190a20d9ec56eb08`  
		Last Modified: Wed, 09 Sep 2026 22:48:57 GMT  
		Size: 72.3 MB (72312315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529b578f2876bf5640e6a2ac3df8a2e53febf0c83a6ecaa6d2452c57493f6373`  
		Last Modified: Wed, 09 Sep 2026 22:48:52 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356b4af847e5677374118df3a86c96ba540d78ebbdef5e8a4b178bce03c481d4`  
		Last Modified: Wed, 09 Sep 2026 23:26:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44004de85f4baee924d48ff72ef905f528457fce92fb6cf4225fa5b6cee2af`  
		Last Modified: Wed, 09 Sep 2026 23:26:57 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5835b49c10c487a2dc6ee728ebc2ec17aa552ec1d6928628ca0c7ac5642b12c7`  
		Last Modified: Wed, 09 Sep 2026 23:26:58 GMT  
		Size: 8.4 MB (8369024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a0fb647974c3cece0094e2913ab22a37ccba8299ba3f059539ea2b71d26629`  
		Last Modified: Wed, 09 Sep 2026 23:26:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
