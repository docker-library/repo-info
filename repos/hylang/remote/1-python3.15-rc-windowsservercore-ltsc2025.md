## `hylang:1-python3.15-rc-windowsservercore-ltsc2025`

```console
$ docker pull hylang@sha256:972a198e602cbbec1c28f135657b08b1c3ac615b1454732b8e88966ecae9498c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `hylang:1-python3.15-rc-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:41e5b73840a0e4c38ef12b7fb4f1661e16f81392cf7b82e935c3d78c36801aa5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2438092664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48beef3c8ee8be35834661c1c92712086044b2f59e5be5d53ae36ed74af2c8a`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 20 Jul 2026 22:37:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 20 Jul 2026 22:37:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 20 Jul 2026 22:37:48 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:37:50 GMT
ENV PYTHON_SHA256=56387cf17effe4ae5464c3af0fa2f74758cbfaddcd1d30b0dd29afdf0e5b4295
# Mon, 20 Jul 2026 22:40:55 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 20 Jul 2026 22:40:58 GMT
CMD ["python"]
# Wed, 05 Aug 2026 15:58:23 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:58:25 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:00:07 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:00:08 GMT
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
	-	`sha256:693d90b552fda1af92dd402b7f8b01b6d266ddb2221d729335ea4d717b507f70`  
		Last Modified: Mon, 20 Jul 2026 22:41:11 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e245aa4b7251dc4fb49cd8a21bcca94476534069f842fe8f88598f0f7eb0cb1b`  
		Last Modified: Mon, 20 Jul 2026 22:41:10 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4b38374067ac2b5fcedddd0ad02445915ad89e76f9650714dba443b3d2160f`  
		Last Modified: Mon, 20 Jul 2026 22:41:10 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ff743abc2d089c01e343f0d5c319ef1d9b9964902069dd8181e825472ea960`  
		Last Modified: Mon, 20 Jul 2026 22:41:10 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e9c5cb62fde855b332b7d54d410c3f6c8663e1bc8afe5c5e35f8580c68eff`  
		Last Modified: Mon, 20 Jul 2026 22:41:15 GMT  
		Size: 74.6 MB (74609791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bed6f27bbe767276555cd1f8f5e644b61352ed7695fa72065c2d85ca25ec1ea`  
		Last Modified: Mon, 20 Jul 2026 22:41:10 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:528cd9d8f7aa74e5e5d57b7fb624e8a2c6b0a4b6e0cc096a3de908dd7523f002`  
		Last Modified: Wed, 05 Aug 2026 16:00:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24285be7c4bcba5f6af1be9886c51a66460db107d463b20831670c35f27bc1e3`  
		Last Modified: Wed, 05 Aug 2026 16:00:13 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2d2e43f4fc30ae8095748fe4467ded8602f64b790a6bb958827b4e6c246011`  
		Last Modified: Wed, 05 Aug 2026 16:00:14 GMT  
		Size: 8.5 MB (8464348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b4cda8d797bb86dba9603e84bf822e5901d7378641fee426c3bbf26941bfd1`  
		Last Modified: Wed, 05 Aug 2026 16:00:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
