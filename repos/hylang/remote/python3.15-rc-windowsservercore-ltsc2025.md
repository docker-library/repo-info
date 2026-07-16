## `hylang:python3.15-rc-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:9ae3d90796694813e537beae061ea23e728a26826633fad516192b33dfae8f08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hylang:python3.15-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:a9f621694bf931d5d1bb3c3b8651da346af92708b66eccf48b4e08d86b7ff6b8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2437962451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d16f87f63584639f3d597b28f5c631f89dcb11f6ec5c243aa7445babbdd45c9`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:57:20 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 16 Jul 2026 00:02:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 16 Jul 2026 00:02:24 GMT
ENV PYTHON_VERSION=3.15.0b3
# Thu, 16 Jul 2026 00:02:25 GMT
ENV PYTHON_SHA256=8002dbdf7277964a3c50f5deef090dfcd0769647a35aec97999f63d5f2903d38
# Thu, 16 Jul 2026 00:03:03 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Thu, 16 Jul 2026 00:03:04 GMT
CMD ["python"]
# Thu, 16 Jul 2026 00:19:01 GMT
ENV HY_VERSION=1.3.0
# Thu, 16 Jul 2026 00:19:01 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 16 Jul 2026 00:19:33 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 16 Jul 2026 00:19:33 GMT
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
	-	`sha256:f9ac4ee773ecceeadd169f6bb0593cd609a4e3a08b152c59568702f23d517bd7`  
		Last Modified: Wed, 15 Jul 2026 23:58:12 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07a4e3e0184a2b1ab8ef603c358886be6c17090a4588b2b063542223156890f`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c64600244d73dc0aa98c2f3859d96cf241f3a527210a7811d0ea3f0b9dcae2b`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158df0e78b63e11ec1da2d4ea7c63437a161b06baeb89a5e72faae7c97521e6c`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfe8f7121653e5dd3b44bcc364d29ccd92d8758fd38a6767b593a6829e26d40`  
		Last Modified: Thu, 16 Jul 2026 00:03:13 GMT  
		Size: 74.5 MB (74517867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b25b9ff166c0fdddecfbcfbafa775313ced86ea92e6059ecd0d07adbe3636f`  
		Last Modified: Thu, 16 Jul 2026 00:03:08 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a41c332b4d4613c2090e0784bf2623b82bbb01f40436aac27fb527e309cdd0d`  
		Last Modified: Thu, 16 Jul 2026 00:19:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0add99bca62f0ec0a464fcfd7ffcfdddd7adb1a3e51ce74ccf867cb65495947`  
		Last Modified: Thu, 16 Jul 2026 00:19:37 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd489b2cbc41adeab684ad9d54198f2eb314abd786ebc23f322bc983c7e10e2`  
		Last Modified: Thu, 16 Jul 2026 00:19:39 GMT  
		Size: 8.4 MB (8426175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50df8e6dfe2edb69e67677d187907ee8ba312f71df96f60abd9cefc5e708f1fd`  
		Last Modified: Thu, 16 Jul 2026 00:19:37 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
