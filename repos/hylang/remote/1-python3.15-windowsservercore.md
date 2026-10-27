## `hylang:1-python3.15-windowsservercore`

```console
$ docker pull hylang@sha256:1f18b80f03dc611143eed8df9433813cf4a570f727733dc67c074135c81b55a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `hylang:1-python3.15-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull hylang@sha256:75bbb0732421abe523ed4a62fd23352d99ea46c792d8975f6c7d76c9a1605e4b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2472547193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d400a1ab4460da4265e09876cc120d076a7750e2d5b50735af1b4a537aa62d0`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Mon, 26 Oct 2026 22:35:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 26 Oct 2026 22:35:11 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 26 Oct 2026 22:35:13 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:35:13 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Mon, 26 Oct 2026 22:37:03 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 26 Oct 2026 22:37:04 GMT
CMD ["python"]
# Mon, 26 Oct 2026 22:58:25 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 22:58:25 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 22:58:50 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 26 Oct 2026 22:58:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95374dc7c8ba536140a7fb898018b7fb7b55487e67c9e6381de9f8ebb9b2a22a`  
		Last Modified: Mon, 26 Oct 2026 22:37:11 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240db9602b13dd0e72b530ced320ea6ce553857ecb3d280eef20f70ecbeb02ab`  
		Last Modified: Mon, 26 Oct 2026 22:37:09 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a685d39128a35deca1f8bcf7aa83bb6f851ef4028b2c1c42f410f65398d990`  
		Last Modified: Mon, 26 Oct 2026 22:37:09 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edc46469bf8f8a06a4de0106b7161a7038de5800e54f654f5b893a2cadc1c76`  
		Last Modified: Mon, 26 Oct 2026 22:37:09 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185a0b22c4c2f672359cbc4bfd8ab0fc49280281252caa89e4c4f19fbcd248a8`  
		Last Modified: Mon, 26 Oct 2026 22:37:14 GMT  
		Size: 72.3 MB (72298199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e6134ddea3af43c13586e67112cdb8aa063d7737df08e2d54df66707d3f270`  
		Last Modified: Mon, 26 Oct 2026 22:37:09 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115d6e79d12f26fb93a0fdcc2c3a7770de6c5d6b4d49d98c732b397fdf265083`  
		Last Modified: Mon, 26 Oct 2026 22:58:54 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983896caaf03635f9ed56eccfede420a50b824c90bdec94279fb4f60c4ab02e7`  
		Last Modified: Mon, 26 Oct 2026 22:58:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d8c59b057b27cff1a7cf60eed4ff7a97dbc3c2ff1559d76d38cf06eae65dd5`  
		Last Modified: Mon, 26 Oct 2026 22:58:55 GMT  
		Size: 8.2 MB (8244461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a193ea2d75335a560917a95c6baee252225a8e5bc97fa7fb7aee9bad80272ca`  
		Last Modified: Mon, 26 Oct 2026 22:58:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-python3.15-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:45ec01105241d7b64e0a409ef13a7561e10f366ccbfb131ff461c79353e98188
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2306441080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700e197e0e393d3636ef3477e0f2bf72ed654148c30a7fffd75f8ad7f7866330`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Mon, 26 Oct 2026 22:34:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 26 Oct 2026 22:34:27 GMT
ENV PYTHONIOENCODING=UTF-8
# Mon, 26 Oct 2026 22:34:28 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:34:30 GMT
ENV PYTHON_SHA256=06e225a228191b0f4d1dcf6905fbb21bf9f6970d13a2ec63137ab9bee76f15aa
# Mon, 26 Oct 2026 22:36:43 GMT
RUN $url = 'https://www.python.org/ftp/python/3.15.2/python-3.15.2-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Mon, 26 Oct 2026 22:36:44 GMT
CMD ["python"]
# Mon, 26 Oct 2026 22:58:28 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 22:58:28 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 22:59:07 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Mon, 26 Oct 2026 22:59:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6d53fb6fad6687abc0f7d67c238bf6792aa1f5f63d8b3f491890c60d11a24b`  
		Last Modified: Mon, 26 Oct 2026 22:36:50 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b773eaef0521ccf0f067167f47e7a594e88ce916cff4141685eff3d0357d631`  
		Last Modified: Mon, 26 Oct 2026 22:36:48 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f4501465c8cbdf65b5718ba0309f8c5fd6298447a59fcdb8070bfbef64f148d`  
		Last Modified: Mon, 26 Oct 2026 22:36:48 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b1dc543f0c2dfe6141602e4182a8a3d4bb6f55dd47d0dee0afc77cc0ccf800`  
		Last Modified: Mon, 26 Oct 2026 22:36:48 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f240b13baa51b1106900f48e875162a25e227480ca3d9a19fdbe2cba4ff368`  
		Last Modified: Mon, 26 Oct 2026 22:36:53 GMT  
		Size: 72.1 MB (72097390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da7034bb0e7b656f295371eb5879ef50bbded9740fae4349d88cb8f952f9958`  
		Last Modified: Mon, 26 Oct 2026 22:36:48 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3264c8144beb14ab415ff4fc80a8c3ab427c9b40e80e6d62358777a46b09c5`  
		Last Modified: Mon, 26 Oct 2026 22:59:12 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8898c09273df2fc925e932f610fa05e0a0973d85f5b9537e77b5291e67dc0de8`  
		Last Modified: Mon, 26 Oct 2026 22:59:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629e85446e32ef4eca7766fa6df53d5260529276c9a1a2d0adccb50362a0bb46`  
		Last Modified: Mon, 26 Oct 2026 22:59:13 GMT  
		Size: 8.0 MB (8047793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f461bb61fb734962f21dc123df793dd8eca0d13b285d69f2903fce71062f6bca`  
		Last Modified: Mon, 26 Oct 2026 22:59:12 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
