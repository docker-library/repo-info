## `hylang:1-python3.15-rc-windowsservercore`

```console
$ docker pull hylang@sha256:c5356be7dc40bb3ba5622a8f9d5f7c8ebdae4164d0f5755b13e0c01458a9211c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `hylang:1-python3.15-rc-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:f3c9fedb7ec86b46256c864d0744220ba223aaecfcbd292399f289421233f539
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2438057711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc1a9a905e426c0862161ed92969e485990fb6bb2d4b32e9d0b1c8464664c09d`
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
# Mon, 20 Jul 2026 23:26:46 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:26:48 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:28:18 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 20 Jul 2026 23:28:19 GMT
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
	-	`sha256:78c6671074ec416e44948d21367f4fd17be6b54a9c82e08184ea8dc82b0b2ae7`  
		Last Modified: Mon, 20 Jul 2026 23:28:24 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba260dcbf59f2163b1d67e972c55a6a1859f28c111ef436309b3096fc07aa9c3`  
		Last Modified: Mon, 20 Jul 2026 23:28:24 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bc43b08fd99b66f294a7fecba77c0e4bfb218dc0b143b779404e5949cd5540`  
		Last Modified: Mon, 20 Jul 2026 23:28:25 GMT  
		Size: 8.4 MB (8429294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe41d6d608edeba052c163da4eef36435ac3c63144202a66981766ff82bb2bc`  
		Last Modified: Mon, 20 Jul 2026 23:28:24 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-python3.15-rc-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:521ae228047b675ffa49a3e7cf749ba005d8ef23f4153f1d2993a9180b20de43
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2240156157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da4b037d35b75fd22485cb16fa05564019c65a74fa6ce13db6a57921d09f2f8`
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
# Tue, 21 Jul 2026 00:17:40 GMT
ENV HY_VERSION=1.3.0
# Tue, 21 Jul 2026 00:17:44 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 21 Jul 2026 00:19:34 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 21 Jul 2026 00:19:34 GMT
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
	-	`sha256:5713179293f9647d0286c104a8f93c2cc6be3a226cfb3bed3249cc61be1ee8a3`  
		Last Modified: Tue, 21 Jul 2026 00:19:39 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7355e1092ec64be61fae86f8ba2223c7b83882e0f332a71fd3734c347a070c`  
		Last Modified: Tue, 21 Jul 2026 00:19:39 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0fc6c94716b42841e0d2a00cf63dd35402f72277336a6a7cfa4f2cd578a3da5`  
		Last Modified: Tue, 21 Jul 2026 00:19:40 GMT  
		Size: 8.1 MB (8149310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef56b9e7cb58236c6be6d90c491eafafa76c02e3322e3fd984fa39cbfc0bc643`  
		Last Modified: Tue, 21 Jul 2026 00:19:39 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
