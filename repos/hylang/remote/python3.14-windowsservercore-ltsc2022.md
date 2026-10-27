## `hylang:python3.14-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:ec1ff07a41c543085c11c66b3473ff5285b750027440151d30c515d934e1a671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `hylang:python3.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hylang@sha256:cd4b0fb300ecaefa3b0a4657a26a465e3bdb0b66a9e3a0e215020e5cc798c131
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2304436670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40106f5bb24cfd319528f5c5cbba8baebba847c5a9e9f26a2da0361c3c202f4`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:10:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 27 Oct 2026 18:10:41 GMT
ENV PYTHON_VERSION=3.14.10
# Tue, 27 Oct 2026 18:10:42 GMT
ENV PYTHON_SHA256=92480239264744fe0386a1bd8275786fefa126e3129e56a68e22b52c73329965
# Tue, 27 Oct 2026 18:11:15 GMT
RUN $url = 'https://www.python.org/ftp/python/3.14.10/python-3.14.10-amd64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		Write-Host 'Verifying install ("python --version") ...'; 	python --version; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:11:16 GMT
CMD ["python"]
# Tue, 27 Oct 2026 19:19:48 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:19:48 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:20:26 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 19:20:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595092004383b652eb9dd6a9e61984c52d5b546af386f4d8e34bb346c0f86dd0`  
		Last Modified: Tue, 27 Oct 2026 17:50:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00d0a8a55b553358a0f34f8efe7a1a6fc037a10c7830a0bf915baed9f1b8a8e`  
		Last Modified: Tue, 27 Oct 2026 18:11:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08bc488fd1e6e54c9d35276f384cb210d6398ea823d49ea107dfacbcc8abcf61`  
		Last Modified: Tue, 27 Oct 2026 18:11:20 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f4c53f3f67a67608ba2ac76aa6c860426f6e0972f9b57d67382acf24cf96f`  
		Last Modified: Tue, 27 Oct 2026 18:11:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ad9ee2134caf0aab0d31c15998c9db589d71631de74d894b121c68c6d1c6fd`  
		Last Modified: Tue, 27 Oct 2026 18:11:25 GMT  
		Size: 69.2 MB (69162253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac26124a534ab61358dc35220285e28242ff601e900cc79c189b35760dc31fee`  
		Last Modified: Tue, 27 Oct 2026 18:11:20 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda1154a7a2460d9c5c70c28cff5194a63ff58abe49c6a131ccad6485140000`  
		Last Modified: Tue, 27 Oct 2026 19:20:31 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69aac3de10036bb3827a4b0edb8fb4bf50baf2ed160c50608725b2691ef27b9a`  
		Last Modified: Tue, 27 Oct 2026 19:20:31 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887cc18973a11daa203d288f1b7c2903120ba75ec5cc5b61aa1049a6ad335169`  
		Last Modified: Tue, 27 Oct 2026 19:20:32 GMT  
		Size: 8.2 MB (8207771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ffc251b7a1d866b3e89041e91a1724f0f3b7d15a738f2a994ab2bc8eaa2d31`  
		Last Modified: Tue, 27 Oct 2026 19:20:31 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
