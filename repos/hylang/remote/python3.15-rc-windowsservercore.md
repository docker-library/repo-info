## `hylang:python3.15-rc-windowsservercore`

```console
$ docker pull hylang@sha256:37dd167e53e0e0f73ca9cf591e684d5b5d0dc13223efabe8b3c585643a48d7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `hylang:python3.15-rc-windowsservercore` - windows version 10.0.26100.33158; amd64

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

### `hylang:python3.15-rc-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:e1f20cddd7635f68b188b507b2fad1167983e9ca5dd52ac385e16b60c6e2a58a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2240175854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20aa3da6a3d6217b40e09ab0ecf00ec0f00034786c04eecf755a5aa9be1d7a6`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 20 Jul 2026 23:02:37 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 20 Jul 2026 23:02:39 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 20 Jul 2026 23:02:42 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 23:02:43 GMT
ENV PYTHON_SHA256=56387cf17effe4ae5464c3af0fa2f74758cbfaddcd1d30b0dd29afdf0e5b4295
# Mon, 20 Jul 2026 23:05:38 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 20 Jul 2026 23:05:39 GMT
CMD ["python"]
# Wed, 05 Aug 2026 16:00:39 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:42 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:02:26 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:02:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f91c6ce357a7e21ee294a75c08daa5a9ea253067f040e8af75f83b51b2e16d`  
		Last Modified: Mon, 20 Jul 2026 23:05:46 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfafadc80130ea062c812b7804fdf22f1afdc0c0f3ea10d3afbcad01c972df00`  
		Last Modified: Mon, 20 Jul 2026 23:05:44 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1f75a139b1e94d7d54a5b3bd32b4b6d01649ce0dedf7a2538e71b17458dc70c`  
		Last Modified: Mon, 20 Jul 2026 23:05:44 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb73960c85fdd71b07332abe85c66e867423e6a67b9856773f3e6ba79f7e982`  
		Last Modified: Mon, 20 Jul 2026 23:05:44 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190c93d65ef9603877ca4ea5473c121566d4d01f72fc4ac80083d874e3c2b95`  
		Last Modified: Mon, 20 Jul 2026 23:05:50 GMT  
		Size: 74.4 MB (74443232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24e7780786ea9625a1e5763e40b5aaee6455361d9ad9406bfa1ff79a91f849f`  
		Last Modified: Mon, 20 Jul 2026 23:05:44 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc768156fe3d7ba333264efb0495ef1cb881876d4c8f62962574348f1d952cf`  
		Last Modified: Wed, 05 Aug 2026 16:02:32 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7e73fe624a3f6b82a95373db1b6e0d7e987cc00263b54df1a808314394f13`  
		Last Modified: Wed, 05 Aug 2026 16:02:32 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676dc0a55ade66f571d3330fde417ade82bfd8ff313d5d0f4276902acb0dca66`  
		Last Modified: Wed, 05 Aug 2026 16:02:33 GMT  
		Size: 8.2 MB (8168999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442a17af4fbc7ffeff65ca551485acaf260c4175579579a217997e1c0b403815`  
		Last Modified: Wed, 05 Aug 2026 16:02:32 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
