## `hylang:windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:bdd2c6a7a0b48d31d42bdfd43c44fe3e704ba92070824bb52a89847a4a25fe96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `hylang:windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

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
